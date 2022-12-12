import networkx as nt
import numpy as np
import sys

args = []

for parametro in sys.argv:
  args.append(parametro)
  
n = int(float(args[1]))
v = int(args[2])
adj = np.ndarray((2**n, 2**n))

matrix = open('./temp/adjMatrix.txt')

for i in range(int(2 ** n)):
  line = matrix.readline().split(" ")
  line = line[:-1]
  adj[i] = line

graph = nt.Graph(nt.from_numpy_matrix(adj))

MST = nt.algorithms.minimum_spanning_tree(graph, algorithm='prim')

I = MST.subgraph([i for i, j in MST.degree() if j % 2 == 1])
M = nt.algorithms.min_weight_matching(I)

G_linha = MST


G_linha.add_weighted_edges_from([(u, d, graph[u][d]['weight']) for u, d, in graph.edges() if (u, d) in M ])
if v: nt.write_graphml(G_linha, "./logs/graphs/InducedSubgrapht.graphml")


eul_circ = nt.algorithms.depth_first_search.dfs_edges(G_linha)

path = 0.0
visited = set()

for i in eul_circ:
  if not i in visited:
    path += graph.get_edge_data(i[0], i[1])['weight']
    visited.add(i)
    
if v: nt.write_graphml(graph, "./logs/graphs/CHRGraph.graphml")
if v: nt.write_graphml(MST, "./logs/graphs/mst.graphml")
if v: nt.write_graphml(G_linha, "./logs/graphs/InducedSubgraph.graphml")

try:
  f = open(f'./temp/Christofides-result-{n}.txt', 'x') 
  f.write(str(path))

except FileExistsError:
  f = open(f'./temp/Christofides-result-{n}.txt', 'w') 
  f.write(str(path))
  
f.close()

# print(path)
