# Prism::Node#each_child_node

### def each_child_node -> Enumerator
### def each_child_node {|node| ... } -> ()
{: since="4.0.1"}

ブロックを指定した場合、[Prism::Node#compact_child_nodes](../../../method/Prism=3a=3aNode/i/compact_child_nodes.md) の各要素を順に yield します。ブロックを指定しない場合は [Enumerator](../../../class/Enumerator.md) を返します。
