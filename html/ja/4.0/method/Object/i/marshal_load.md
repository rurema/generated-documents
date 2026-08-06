# Object#marshal_load

### def marshal_load(obj) -> object

[Marshal?.load](../../../method/Marshal/m/load.md) を制御するメソッドです。

some のダンプ結果（Marshal.dump(some)） をロードする（Marshal.load(Marshal.dump(some))）には some がメソッド marshal_load を持っていなければなりません。
このとき、marshal_dump の返り値が marshal_load の引数に利用されます。
marshal_load 時の self は、生成されたばかり（[Class#allocate](../../../method/Class/i/allocate.md) されたばかり） の状態です。

marshal_dump/marshal_load の仕組みは Ruby 1.8.0 から導入されました。
これから書くプログラムでは _dump/_load ではなく
marshal_dump/marshal_load を使うべきです。

- **param** `obj` -- marshal_dump の返り値のコピーです。

- **return** --   返り値は無視されます。


- **SEE** [Object#marshal_dump](../../../method/Object/i/marshal_dump.md), [Marshal](../../../class/Marshal.md)
