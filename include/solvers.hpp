#ifndef SOLVER_H
#define SOLVER_H

#include <iostream>
#include <vector>
#include <thread>
#include <mutex>
#include <math.h>
#include <stdio.h>
#include <chrono>
#include <igraph/igraph.h>

using namespace std;

typedef struct ponto
{
  int x;
  int y;
} Ponto;

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