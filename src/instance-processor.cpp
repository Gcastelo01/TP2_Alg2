#include "instance-processor.hpp"

InstanceProcessor::InstanceProcessor(/* args */){}
InstanceProcessor::~InstanceProcessor(){}


/**
 * \class InstanceProcessor
 * \brief Processa uma instância armazenada em um determinado arquivo
 * 
 * \param filename Nome do arquivo a ser processado
 * \param assets ponteiro para o map onde ficam armazenadas as instâncias
 * \param s número da instância que está sendo processada no momento
*/
void InstanceProcessor::processInstanceIntoVector(string filename, int s, map<int, vector<pair<int, int>>>* assets){
  ifstream file;

  file.open(filename);

  int size;
  vector<pair<int, int>> instance;

  file >> size;

  for(int i = 0; i < size; i++){
    int x;
    int y;
    file >> x;
    file >> y;
    pair<int, int> temp(x, y);
    instance.push_back(temp);

  }

  file.close();

  assets->insert(pair<int, vector<pair<int, int>>>(s, instance));
}

