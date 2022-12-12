#ifndef SOLVER_H
#define SOLVER_H

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <thread>
#include <future>
#include <mutex>
#include <chrono>
#include <queue>

#include <algorithm>

#include <igraph/igraph.h>
#include <math.h>
#include <stdio.h>


using namespace std;

typedef struct ponto
{
  int x;
  int y;
} Ponto;

typedef struct node
{
  double bound = 0;
  double cost = 0;
  int level = 0;
  vector<int> s = {0};

  bool operator<(node m) const{
    return level < m.level;
  }

} Node;

class Solver
{
private:
  int size;
  bool prin = false;
  bool man = false;
  bool matrixPrint = true;
  vector<pair<int, int>> inst;
  vector<vector<double>> adjMatrixEuclid;
  vector<vector<double>> adjMatrixManhattan;

  static double bound(Node n, int i, vector<vector<double>> *adj);
  static bool mp(int um, int dois);
  static void makeAdjMatrix(int element, int size, vector<vector<double>> *me, vector<vector<double>> *mm, vector<pair<int, int>> *instance);

  static double euclidianDistance(Ponto self, Ponto to_visit);
  static double manhattanDistance(Ponto self, Ponto to_visit);

  static double BranchAndBound(vector<pair<int, int>> instancia, vector<vector<double>> AdjMatrix, int size, bool verb, bool mp);
  static double TwiceAroundTheTree(vector<pair<int, int>> instancia, vector<vector<double>> AdjMatrix, int size, bool verb, bool mp);
  static double Christofides(vector<pair<int, int>> instancia, vector<vector<double>> AdjMatrix, int size, bool verb, bool mp);

  void initializer();

public:
  void printMatrix();
  void solve();
  Solver(vector<pair<int, int>> instance, int size, bool a, bool b, bool c);
  ~Solver();
};

#endif