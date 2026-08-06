# Etc::Passwd.each

### def Etc::Passwd.each {|entry| ... } -> Etc::Passwd
### def Etc::Passwd.each                -> Enumerator

/etc/passwd に含まれるエントリを一つずつブロックに渡して評価します。
ブロックを省略した場合は [Enumerator](../../../class/Enumerator.md) を返します。

- **SEE** [Etc?.getpwent](../../../method/Etc/m/getpwent.md)
