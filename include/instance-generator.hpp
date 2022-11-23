#ifndef INSTANCE_H
#define INSTANCE_H

#include <iostream>
#include <thread>
#include <vector>
#include <fstream>
#include <set>
#include <math.h>

using namespace std;

/**
 * \class InstanceGenerator
 * \brief Classe responsável por gerar instâncias aleatórias para o problema. As instâncias ficam salvas em uma pasta ./instances. 
 * 
 * Os arquivos gerados tem o seguinte padrão: Na primeira linha, o número n de instâncias no arquivo. As seguintes n linhas possuem 2 números: 0 <= x <= 100000 e 0 <= y <= 100000, representando as coordenadas de cada ponto.
*/
class InstanceGenerator{
  private:
    const string filename = "./instances/instance";

  public:
    InstanceGenerator(){};
    void makeInstances();
};

#endif
