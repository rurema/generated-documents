# Delegator#method_missing

### def method_missing(m, *args) -> object

渡されたメソッド名と引数を使って、[Delegator#__getobj__](../../../method/Delegator/i/__getobj__.md) が返すオブジェクトへメソッド委譲を行います。

- **param** `m` -- メソッドの名前（シンボル）

- **param** `args` -- メソッドに渡された引数

- **return** -- 委譲先のメソッドからの返り値

- **SEE** [BasicObject#method_missing](../../../method/BasicObject/i/method_missing.md)
