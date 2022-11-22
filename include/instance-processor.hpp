#ifndef INSTANCEP_H
#define INSTANCEP_H

#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <map>


using namespace std;

/**
 * \class InstanceProcessor
 * \brief Processa as instâncias aleatoriamente geradas salvas na pasta ./instances. Cada documento gera um vetor contendo pares ordenados (x, y). Cada par ordenado representa um ponto no plano cartesiano.
 * 
*/
class InstanceProcessor{
  public:
    InstanceProcessor(/* args */);
    static void processInstanceIntoVector(string filename, int s, map<int, vector<pair<int, int>>>* assets);
    
    ~InstanceProcessor();
};





#endif