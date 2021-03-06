from typing import Any, Dict, Iterable, Iterator, List, Set

class CyclicDependencyError(ValueError): ...

def topological_sort_as_sets(dependency_graph: Dict[Any, Any]) -> Iterator[Set[Any]]: ...
def stable_topological_sort(nodes: Iterable[Any], dependency_graph: Dict[Any, Any]) -> List[Any]: ...
