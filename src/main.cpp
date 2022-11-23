#include <iostream>
#include <thread>
#include <vector>
#include <map>
#include <chrono>
#include <getopt.h>

#include "instance-generator.hpp"
#include "instance-processor.hpp"
#include "solvers.hpp"

using namespace std;

void use(){
  cout << endl;
  cout << "| Listagem de argumentos |\n" << endl;
  cout << "-i <número> -> Rodar uma instância específica (números válidos de 4 a 10)" << endl;
  cout << "-g -> Faz com que o programa não gere novas instânicas de teste" << endl;
  cout << "-m -> Utilizar distância de Manhattan. Caso esta opção não seja utilizada, o programa utilizará da distância euclidiana por padrão." << endl;
  cout << "-t -> Cronometra o tempo total de execução do Programa." << endl;
  cout << "-e -> Cronometra o tempo de execução de cada Algoritmo separadamente." << endl;
  cout << "-v -> O programa irá imprimir mais informações sobre seu status ao longo da execução" << endl << endl;

  exit(0);
}

void parse_args(map<char, string>* args, int argc, char** argv){
  int c;
  extern char* optarg;

  while((c = getopt(argc, argv, "hgtvemi:")) != EOF){
    switch(c){
      case 'h':
        args->insert(pair<char, string>('h', "sim"));
        use();
        break;

      case 't':
        args->insert(pair<char, string>('t', "sim"));
        break;

      case 'm':
        args->insert(pair<char, string>('m', "sim"));
        break;

      case 'e':
        args->insert(pair<char, string>('e', "sim"));
        break;

      case 'i':
        if(stoi(string(optarg)) >= 4 && stoi(string(optarg)) <= 10){
          args->insert(pair<char, string>('i', optarg));
          break;

        } else {
          cout << "O número da instância deve ser entre 4 e 10" << endl;
          exit(1);
        }

      case 'g':
        args->insert(pair<char, string>('g', "sim"));
        break;

      case 'v':
        args->insert(pair<char, string>('v', "sim"));
        break;

      default:
        use();
        break;
    }
  }
}


int main(int argc, char* argv[]){

  map<char, string> args;
  parse_args(&args, argc, argv);

  // Só executa o Programa se o usuário não tiver escolhido 
  if(args['h'] != "sim"){

    chrono::high_resolution_clock::time_point t1 = chrono::high_resolution_clock::now();

    map<int, vector<pair<int, int>>> instances;
    
    if(args['g'] != "sim"){
      InstanceGenerator i;
      i.makeInstances();
    }


    if(args.find('i') != args.end()){
      int instance = stoi(args['i']);
      string a("./instances/instance" + args['i'] + ".txt");
      InstanceProcessor ip;
      
      ip.processInstanceIntoVector(a, instance, &instances);

      Solver s(instances[instance], pow(2, instance), (args['v'] == "sim"), (args['m'] == "sim"));

      s.solve();

    } else {      

      // Criando uma thread para processar cada instância
      thread workers[7];

      // Abrindo e Processando instâncias geradas
      for(int i = 0; i < 7; i++){
        string a("./instances/instance" + to_string(i + 4) + ".txt");
        workers[i] = thread(InstanceProcessor::processInstanceIntoVector, a, (i+4), &instances);   
      }

      // Aguardando o Processamento das instâncias acabar
      for(int i = 0; i < 7; i++){
        workers[i].join();
      }

      // Rodando todas as Instâncias, uma a uma 
      for(int i = 4; i < 11; i++){
        Solver s(instances[i], pow(2, i), (args['v'] == "sim"), (args['m'] == "sim"));

        s.solve();
      }
      
    }

    if(args['t'] == "sim"){
      chrono::high_resolution_clock::time_point t2 = chrono::high_resolution_clock::now();
      chrono::duration<double> time_span = chrono::duration_cast<chrono::duration<double>>(t2 - t1);
      cout << "Elapsed time: " << time_span.count() << endl;
    }
  }

  return 0;
}