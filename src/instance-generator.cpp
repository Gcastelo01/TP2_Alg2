#include "instance-generator.hpp"

/**
 * \brief Gera uma instância específica do problema através de um gerador de números pseudoaleat
 * ório entre 0 e 100000.
 *
 * \param instId O ID da instância que está sendo correntemente gerada.
 * \param filename Nome do arquivo que será gerado, onde as informações serão salvas.
 *
 *
 */
static void __specific_instance(int instId, string filename)
{
  string name = filename + to_string(instId) + ".txt";

  set<pair<int, int>> instance;

  ofstream file(name, ofstream::out);

  int x;
  int y;
  int i = 0;

  double sizeofInstance = pow(2, instId);

  file << sizeofInstance << endl;

  // for(int i = 0; i < sizeofInstance; i++){
  //   x = 1 + (rand() % 100000);
  //   y = 1 + (rand() % 100000);
  //   file << x << " " << y << endl;
  // }

  while (i < sizeofInstance){
      x = 1 + (rand() % 100);
      y = 1 + (rand() % 100);

      pair<int, int> temp(x, y);
      if(instance.insert(temp).second) i++;

  }

  for(set<pair<int, int>>::iterator i = instance.begin(); i != instance.end(); i++){
      file << i->first << " " << i->second << endl;
  }

  file.close();
}

/**
 * \class makeInstances
 *
 * \brief A função gera, em threads paralelas, cada um dos arquivos contendo as instâncias do problema
 */
void InstanceGenerator::makeInstances()
{
  thread threads[7];

  for (int i = 4; i < 11; i++)
  {
    threads[i - 4] = thread(__specific_instance, i, filename);
  }

  for (int i = 0; i < 7; i++)
  {
    threads[i].join();
  }
}