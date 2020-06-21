from collections import defaultdict
from functools import reduce


def topological_sort(graph):
    def dfu(_u, _visited, _stack):
        _visited.add(_u)
        for v in graph[_u]:
            if v not in _visited:
                dfu(v, _visited, _stack)
        _stack.append(_u)

    all_keys_set = set(graph.keys())
    all_values_set = set(reduce(lambda x, y: x + y, graph.values()))
    all_vertices = set()
    all_vertices.update(all_keys_set)
    all_vertices.update(all_values_set)

    visited = set()
    stack = []
    for u in all_vertices:
        if u not in visited:
            dfu(u, visited, stack)
    stack.reverse()
    print(stack)


def main():
    graph = defaultdict(list)
    graph[2].append(3)
    graph[3].append(1)
    graph[5].extend([2, 0])
    graph[4].extend([0, 1])
    topological_sort(graph)


if __name__ == '__main__':
    main()
