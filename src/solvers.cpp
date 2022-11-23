#include "solvers.hpp"


mutex mtx;

Solver::Solver(vector<pair<int, int>> instance, int size, bool a, bool b): prin(a), man(b){
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

  element_dist_euclid.push_back(-1);
  element_dist_man.push_back(-1);

  for(int i = element + 1; i < size; i++){
    Ponto temp;
    temp.x = instance->at(i).first;
    temp.y = instance->at(i).second;

    element_dist_euclid.push_back(euclidianDistance(self, temp));
    element_dist_man.push_back(manhattanDistance(self, temp));
  }

  // mtx.lock();
    me->at(element) = element_dist_euclid;
    mm->at(element) = element_dist_man;
  // mtx.unlock();
}


void Solver::initializer(){
  vector<double> temp;
  for(int i = 0; i < size; i++){
    adjMatrixEuclid.push_back(temp);
    adjMatrixManhattan.push_back(temp);
  }
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

  if(prin) printMatrix();

  thread alg_runners[3];

  alg_runners[0] = thread();
  alg_runners[1] = thread();
  alg_runners[2] = thread();

  
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
