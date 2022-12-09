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


double Solver::BranchAndBound(vector<pair<int, int>> instancia, vector<vector<double>> AdjMatrix, int size, bool verb, bool mp){

  return 0;
}


double Solver::TwiceAroundTheTree(vector<pair<int, int>> instancia, vector<vector<double>> AdjMatrix, int size, bool verb, bool mp){
  chrono::high_resolution_clock::time_point t1 = chrono::high_resolution_clock::now();

  if(verb) cout << "[+] TAT: Iniciando algoritmo Twice Around the Tree..." << endl;
  int SizeOfThing = 0;
  igraph_t grafo;
  igraph_t mst;
  igraph_matrix_t mtrx;
  igraph_matrix_t res;
  igraph_integer_t nrows = size;
  igraph_vector_t pesos;
  igraph_vector_int_t el;
  igraph_vector_int_t dist;
  igraph_integer_t root = 0;
  igraph_vector_int_t hamiltonian_circuit;

  // Inicializando elementos do grafo
  igraph_vector_int_init(&el, 0);
  igraph_vector_int_init(&hamiltonian_circuit, 0);
  igraph_vector_int_init(&dist, 0);
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

  igraph_dfs(&mst, root, IGRAPH_ALL, false, &hamiltonian_circuit, nullptr, nullptr, &dist, nullptr, nullptr, nullptr);

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
  igraph_vector_int_destroy(&dist);
  igraph_destroy(&mst);
  igraph_destroy(&grafo);

  return SizeOfThing;
}


double Solver::Christofides(vector<pair<int, int>> instancia, vector<vector<double>> AdjMatrix, int size, bool verb, bool mp){

  return 0;
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

  thread alg_runners[3];
  if(!man){
    alg_runners[0] = thread(BranchAndBound, inst, adjMatrixEuclid, size, prin, matrixPrint);
    alg_runners[1] = thread(TwiceAroundTheTree, inst, adjMatrixEuclid, size, prin, matrixPrint);
    alg_runners[2] = thread(Christofides, inst, adjMatrixEuclid, size, prin, matrixPrint); 

  } else {
    alg_runners[0] = thread(BranchAndBound, inst, adjMatrixManhattan, size, prin, matrixPrint);
    alg_runners[1] = thread(TwiceAroundTheTree, inst, adjMatrixManhattan, size, prin, matrixPrint);
    alg_runners[2] = thread(Christofides, inst, adjMatrixManhattan, size, prin, matrixPrint); 
  }

  for(int i = 0; i < 3; i++) alg_runners[i].join();

  // TwiceAroundTheTree(inst, adjMatrixEuclid, size, prin, matrixPrint);
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
