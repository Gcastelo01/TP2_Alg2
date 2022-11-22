#include <iostream>
#include <thread>
#include <vector>
#include <map>
#include <chrono>

#include "instance-generator.hpp"
#include "instance-processor.hpp"

using namespace std;

int main(int argc, char* argv[]){
  chrono::high_resolution_clock::time_point t1 = chrono::high_resolution_clock::now();



  InstanceGenerator i;
  map<int, vector<pair<int, int>>> instances;
  
  // Criando uma thread para processar cada instância
  thread workers[7];

  // Gerando instâncias para teste do problema.
  i.makeInstances();

  // Abrindo e Processando instâncias geradas
  for(int i = 0; i < 7; i++){
    string a("./instances/instance" + to_string(i + 4) + ".txt");
    workers[i] = thread(InstanceProcessor::processInstanceIntoVector, a, (i+4), &instances);   
  }

  // Aguardando o Processamento das instâncias acabar
  for(int i = 0; i < 7; i++){
    workers[i].join();
  }




  chrono::high_resolution_clock::time_point t2 = chrono::high_resolution_clock::now();
  chrono::duration<double> time_span = chrono::duration_cast<chrono::duration<double>>(t2 - t1);

  cout << "Elapsed time: " << time_span.count() << endl;
  return 0;
}