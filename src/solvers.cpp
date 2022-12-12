#include "solvers.hpp"

mutex mtx;

Solver::Solver(vector<pair<int, int>> instance, int size, bool a, bool b, bool c): prin(a), man(b), matrixPrint(c){
  this->inst = instance;
  this->size = size;
}


double Solver::euclidianDistance(Ponto self, Ponto to_visit){
  return sqrt(pow((to_visit.x - self.x), 2) + pow((to_visit.y - self.y), 2));
}


double Solver::manhattanDistance(Ponto self, Ponto to_visit){
  int a = (self.x - to_visit.x);
  int b = (self.y - to_visit.y);

  return ((a < 0 ? -1*a : a) + (b < 0 ? -1*b : b));
}


void Solver::makeAdjMatrix(int element, int size,vector<vector<double>>* me, vector<vector<double>>* mm, vector<pair<int, int>>* instance){
  vector<double> element_dist_euclid;
  vector<double> element_dist_man;

  Ponto self;
  self.x = instance->at(element).first;
  self.y = instance->at(element).second;
  
  for(int i = 0; i < element; i++){ 
    element_dist_euclid.push_back(0);
    element_dist_man.push_back(0);
  }

  element_dist_euclid.push_back(0);
  element_dist_man.push_back(0);

  for(int i = element + 1; i < size; i++){
    Ponto temp;
    temp.x = instance->at(i).first;
    temp.y = instance->at(i).second;

    element_dist_euclid.push_back(euclidianDistance(self, temp));
    element_dist_man.push_back(manhattanDistance(self, temp));
  }

  
  me->at(element) = element_dist_euclid;
  mm->at(element) = element_dist_man;
}


void Solver::initializer(){
  vector<double> temp;
  for(int i = 0; i < size; i++){
    adjMatrixEuclid.push_back(temp);
    adjMatrixManhattan.push_back(temp);
  }
}


bool Solver::mp(int um, int dois){
  return um == dois;
}


double Solver::bound(Node n, int i, vector<vector<double>> *a){
  double candidate_cost = (*a)[n.level][i];
  double estimative = candidate_cost;

  for(int j = 1; j < a->size(); j++){
    // Caso onde vamos ter que escolher apenas a saída 
    if(j == i){

      double small_exit = 99999999999;
      //Para todos as arestas que saem do vértice
      for(int k = 1; k < a->size(); k++){
        //
        if(k != j && k != n.level && (*a)[j][k] < small_exit){
          small_exit = (*a)[j][k];
        }
      }
      estimative += small_exit;

    }else if(j == n.level){
      // Caso onde vamos ter que escolher apenas a saída 
      if(j == i){

        double small_exit = 99999999999;
        //Para todos as arestas que saem do vértice
        for(int k = 1; k < a->size(); k++){
          //Escolho a menor entrada
          if(k != j && k != i && (*a)[j][k] < small_exit){
            small_exit = (*a)[j][k];
          }
        }

        estimative += small_exit;
      }
    }else{
      int entry_index = 0;
      double small_entry = 9999999999;
      double small_exit = 9999999999;
      for(int k = 1; k < a->size(); k++){
        if(j != k){
          if((*a)[j][k] < small_entry) {small_entry = (*a)[j][k]; entry_index = k;}
        }
      }
      for(int k = 1; k < a->size(); k++){
        if(j != k && k != entry_index){
          if((*a)[j][k] < small_exit) small_exit = (*a)[j][k];
        }
      }

      estimative += (small_entry + small_exit);
    }
  }
  
  return ceil(estimative/2.0);
}


double Solver::BranchAndBound(vector<pair<int, int>> instancia, vector<vector<double>> AdjMatrix, int size, bool verb, bool mp){
  int count = 0;
  double progress = 0;
  int temp_level = 0;
  chrono::high_resolution_clock::time_point t1 = chrono::high_resolution_clock::now();
  cout << "[+] BNB: Iniciando Algoritmo Branch And Bound..." << endl;
  cout << "[+] BNB: 0\% Concluído..." << endl;
  double result = 10000000000; // best solution, initialized as a number that will definetly not appear in my algorithm
  
  Node root;
  root.s = {0};
  root.bound = 0;
  root.cost = 0;
  root.level = 0;
  vector<int> sol;
  priority_queue<Node>* fila = new priority_queue<Node>;

  fila->push(root); 

  while (!fila->empty()){
    Node node = fila->top();
    fila->pop();

    if(verb) cout << "[+] BNB: Rodada: "<< count << " Current Best: " << node.bound << " Node Level: " << node.level << endl;

    if(temp_level < node.level){
      temp_level = node.level;
      // cout << "temp: " <<temp_level << "Node: " << node.level <<  temp_level/size << endl;
      progress = float(temp_level)/float(size);

      chrono::high_resolution_clock::time_point t2 = chrono::high_resolution_clock::now();
      chrono::duration<double> time_span = chrono::duration_cast<chrono::duration<double>>(t2 - t1);  
      cout << "[+] BNB: "<< progress * 100 << "\% Concluído... Tempo Corrente: " << time_span.count() << endl;
    }
    
    if(node.level >= size){
      if(result > node.cost){
        result = node.cost;
        sol = node.s;
      }

    } else if(node.bound < result) {
      if(node.level < size){
        for(int i = 1; i < size; i++){
          double t = bound(node, i, &AdjMatrix);
          if((search_n(node.s.begin(), node.s.end(), 1, i, Solver::mp) == node.s.end()) && AdjMatrix[node.s[-1]][i] != -1 && t < result){
            Node temp;
            temp.bound = t;
            temp.cost = node.cost + AdjMatrix[node.s[-1]][i];
            temp.level = node.level + 1;
            temp.s = node.s;
            temp.s.push_back(i);
            fila->push(temp);
          }
        }

      }else if(AdjMatrix[node.s[-1]][0] != -1 && bound(node, 0, &AdjMatrix) < result && node.level == size){
        Node temp;
        temp.bound = bound(node, 0, &AdjMatrix);
        temp.level = node.level++;
        temp.s = node.s;
        temp.s.push_back(0);
        temp.cost = node.cost + AdjMatrix[node.s[-1]][0];
        fila->push(temp);
      }
    }
    count++;
  }

  chrono::high_resolution_clock::time_point t2 = chrono::high_resolution_clock::now();
  chrono::duration<double> time_span = chrono::duration_cast<chrono::duration<double>>(t2 - t1);

  FILE* log = fopen(("./logs/BranchAndBoundRun-" + to_string(size) + ".log").c_str(), "w+t");
  fprintf(log, ("ALGORITMO: BNB\nTEMPO: " + to_string(time_span.count()) + "\nCAMINHO-MINIMO: " + to_string(result)).c_str());

  delete fila;
  return result;
}


double Solver::TwiceAroundTheTree(vector<pair<int, int>> instancia, vector<vector<double>> AdjMatrix, int size, bool verb, bool mp){
  if(verb) cout << "[+] TAT: Iniciando algoritmo Twice Around the Tree..." << endl; 
  chrono::high_resolution_clock::time_point t1 = chrono::high_resolution_clock::now();

  double SizeOfThing = 0;
  igraph_t grafo;
  igraph_t mst;

  igraph_matrix_t mtrx;
  igraph_matrix_t res;

  igraph_integer_t nrows = size;
  igraph_integer_t root = 0;

  igraph_vector_t pesos;

  igraph_vector_int_t el;
  igraph_vector_int_t hamiltonian_circuit;

  // Inicializando elementos do grafo
  igraph_vector_int_init(&el, 0);
  igraph_vector_int_init(&hamiltonian_circuit, 0);
  igraph_matrix_init(&mtrx, nrows, nrows);
  igraph_matrix_init(&res, 0, 0);
  igraph_vector_init(&pesos, 0);

  if(verb) cout << "[+] TAT: Inserindo pesos na matriz de adjacência..." << endl;

  // Inserindo pesos nas matrizes
  for(int i = 0 ; i < size; i++) for(int j = 0; j < size; j++){
    MATRIX(mtrx, i, j) = AdjMatrix[i][j];
  }

  // Iniciando matroz de Adjacência
  igraph_weighted_adjacency(&grafo, &mtrx, IGRAPH_ADJ_UNDIRECTED, &pesos, IGRAPH_NO_LOOPS);

  if(verb) cout << "[+] TAT: Grafo Inicializado!" << endl;

  /**
   * Aqui começa a execução do algoritmo Twice around the Tree.
   * 
   * 1- scolhemos um nó raiz r (por conveniência, será o nó 0).
   * 2- Utilizando Prim, Computamos uma árvore Geradora Mínima para o Grafo, partindo de r.
   * 3- Fazer o caminhamento Pré-Ordem da MST gerada.
   * 4- Retornar este caminho como estimativa do Caixeiro Viajante (é ciclo Hamiltoniano)
   * 
  */
  if(verb) cout << "[+] TAT: Calculando MST via PRIM..." << endl;
  
  igraph_minimum_spanning_tree_prim(&grafo, &mst, &pesos);

  if(verb) cout << "[+] TAT: MST calculada! Calculando circuito Hamiltoniano..." << endl;

  igraph_dfs(&mst, root, IGRAPH_ALL, false, &hamiltonian_circuit, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr);

  if(verb){
    cout << "[+] TAT: circuito Hamiltoniano Calculado!" << endl;
    cout << "[+] TAT: Plot dos gráficos: " << endl;
    cout << "[+] TAT: Criando diretório ./logs" << endl;

    int i = system("mkdir ./logs");
    if(i != 0) cout << "[!] TAT: Código de erro " << i << "! O diretório já existe?" << endl;

    cout << "[+] TAT: Criando diretório ./logs/graphs" << endl;

    i = system("mkdir ./logs/graphs");
    if(i != 0) cout << "[!] TAT: Código de erro " << i << "! O diretório já existe?" << endl;

    FILE* mst_graph = fopen(("./logs/graphs/mst"+ to_string(size) +".dot").c_str(),  "w+t");
    FILE* full_graph = fopen(("./logs/graphs/full"+ to_string(size) +".dot").c_str(),  "w+t");

    cout << "[+] TAT: Escrevendo MST em ./logs/mst.dot" << endl;
    igraph_write_graph_dot(&mst, mst_graph);

    cout << "[+] TAT: Escrevendo Grafo completo em ./logs/grafo.dot" << endl;
    igraph_write_graph_dot(&grafo, full_graph);

    // cout << "[+] TAT: Escrevendo Caminho hamiltoniano em ./logs/hamiltonian.dot" << endl;
    fclose(mst_graph);
    fclose(full_graph);
    if(mp){
      cout << endl << "----------- CAMINHO MÍNIMO -------------" << endl << endl;

      for(int i = 0; i < size; i++){
        cout << VECTOR(hamiltonian_circuit)[i] << " -" << VECTOR(pesos)[i] << "- ";
      }
      
      cout << endl << endl << "----------- CAMINHO MÍNIMO -------------" << endl << endl;
      cout << endl;
    }
  }

  for(int i = 0; i < size; i++){
    SizeOfThing += VECTOR(pesos)[i]; 
  }

  chrono::high_resolution_clock::time_point t2 = chrono::high_resolution_clock::now();
  chrono::duration<double> time_span = chrono::duration_cast<chrono::duration<double>>(t2 - t1);


  FILE* log = fopen(("./logs/TwiceAroundTheTreeRun-" + to_string(size) + ".log").c_str(), "w+t");
  fprintf(log, ("ALGORITMO: TWT\nTEMPO: " + to_string(time_span.count()) + "\nCAMINHO-MINIMO: " + to_string(SizeOfThing)).c_str());

  // Limpando lixo de memória
  igraph_matrix_destroy(&mtrx);
  igraph_vector_destroy(&pesos);
  igraph_vector_int_destroy(&el);
  igraph_destroy(&mst);
  igraph_destroy(&grafo);

  return SizeOfThing;
}


double Solver::Christofides(vector<pair<int, int>> instancia, vector<vector<double>> AdjMatrix, int size, bool verb, bool mp){
  if(verb) cout << "[+] CHR Iniciando algoritmo de Christofides..." << endl;

  chrono::high_resolution_clock::time_point t1 = chrono::high_resolution_clock::now();
  fstream f;

  int k = system("mkdir ./temp");
  cout << k << endl;
  f.open("./temp/adjMatrix.txt", fstream::out);

  for(int i = 0; i < size; i++){
    for(int j = 0; j < size; j++){
      f << AdjMatrix[i][j] << " ";
    }
    f << endl;
  }

  f.close();
  if(verb) cout << "[+] CHR: Chamando script auxiliar PerfectMatching.py " << "python3 ./src/PerfectMatching.py " << (log(size)/log(2)) << (verb == 1? " 1" : " 0") << endl;
  

  k = system(("python3 ./src/PerfectMatching.py " + to_string((log(size)/log(2))) + (verb == 1? " 1" : " 0")).c_str());
  cout << k << endl;

  if(verb) cout << "[+] CHR: Execução Completa!" << endl;
  if(verb) cout << "[+] CHR: Lendo resultados" << endl;

  chrono::high_resolution_clock::time_point t2 = chrono::high_resolution_clock::now();
  chrono::duration<double> time_span = chrono::duration_cast<chrono::duration<double>>(t2 - t1);

  fstream x;
  x.open(("./temp/Christofides-result-" + to_string(int (log(size)/log(2))) + ".txt"), fstream::in);
  double result = 0;
  x >> result;
  x.close();

  FILE* log = fopen(("./logs/Christofides-" + to_string(size) + ".log").c_str(), "w+t");
  fprintf(log, ("ALGORITMO: CHR\nTEMPO: " + to_string(time_span.count()) + "\nCAMINHO-MINIMO: " + to_string(result)).c_str());

  // Removendo lixo de memória
  return result;
}


void Solver::solve(){
  thread workers[size];
  this->initializer();

  for(int i = 0; i < size; i++){
    workers[i] = thread(makeAdjMatrix, i, size, &adjMatrixEuclid, &adjMatrixManhattan, &inst);
  }

  for(int i = 0; i < size; i++){
    workers[i].join();
  }

  for(int i = 0; i < size; i++) for(int j = 0; j < i; j++){
    adjMatrixEuclid[i][j] = adjMatrixEuclid[j][i];
    adjMatrixManhattan[i][j] = adjMatrixManhattan[j][i];
  }

  if(prin && matrixPrint) printMatrix();

  // packaged_task<double(vector<pair<int, int>>, vector<vector<double>>, int, bool, bool)> p1 (BranchAndBound);
  // packaged_task<double(vector<pair<int, int>>, vector<vector<double>>, int, bool, bool)> p2 (TwiceAroundTheTree);
  // packaged_task<double(vector<pair<int, int>>, vector<vector<double>>, int, bool, bool)> p3 (Christofides);

  // future<double> f1 = p1.get_future();
  // future<double> f2 = p2.get_future();
  // future<double> f3 = p3.get_future();

  // thread alg_runners[3];
  // if(!man){
  //   // alg_runners[0] = thread(move(p1), inst, adjMatrixEuclid, size, prin, matrixPrint);
  //   alg_runners[1] = thread(move(p2), inst, adjMatrixEuclid, size, prin, matrixPrint);
  //   // alg_runners[2] = thread(move(p3), inst, adjMatrixEuclid, size, prin, matrixPrint); 

  // } else {
  //   // alg_runners[0] = thread(move(p1), inst, adjMatrixEuclid, size, prin, matrixPrint);
  //   alg_runners[1] = thread(move(p2), inst, adjMatrixEuclid, size, prin, matrixPrint);
  //   alg_runners[2] = thread(move(p3), inst, adjMatrixEuclid, size, prin, matrixPrint); 

  // }

  // for(int i = 0; i < 3; i++) alg_runners[i].join();
  
  double f1 = Christofides(inst, adjMatrixEuclid, size, prin, matrixPrint);
  cout << "[+] MAIN: Resultado final CHR: " << f1 << endl;
  
  double f2 = TwiceAroundTheTree(inst, adjMatrixEuclid, size, prin, matrixPrint);
  cout << "[+] MAIN: Resultado final TAT: " << f2 << endl;

  // double f3 = BranchAndBound(inst, adjMatrixEuclid, size, prin, matrixPrint);
  // cout << "[+] MAIN: Resultado final BNB: " << f3 << endl;
  // cout << "[+] MAIN: Os demais resultados de execução podem ser encontrados na pasta logs. " << endl;

  int k = system("rm -rf ./temp");
  cout << k << endl;
}


void Solver::printMatrix(){
  cout << "| MATRIZ DE ADJACÊNCIA EUCLIDIANA DA INSTÂNCIA " << size << " |" << endl;
  for(int i = 0; i < size; i++){
    for(int j = 0; j < size; j++){
      cout  << adjMatrixEuclid[i][j] << " ";
    }
    cout << endl;
  }

  cout << endl;

  cout << "| MATRIZ DE ADJACÊNCIA MANHATTAN DA INSTÂNCIA " << size << " |" << endl;
  for(int i = 0; i < size; i++){
    for(int j = 0; j < size; j++){
      cout  << adjMatrixManhattan[i][j] << " ";
    }
    cout << endl;
  }
}


Solver::~Solver(){}
