# Etc::Group.each

### def Etc::Group.each {|entry| ... } -> Etc::Group
### def Etc::Group.each                -> Enumerator

/etc/group に含まれるエントリを一つずつブロックに渡して評価します。
ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

- **SEE** [Etc?.getpwent](../../../method/Etc/m/getpwent.md)
