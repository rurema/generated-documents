# WIN32OLE_VARIANT.array

### def WIN32OLE_VARIANT.array(dims, vt) -> WIN32OLE_VARIANT

配列用のVARIANTオブジェクトを生成します。

オートメーションメソッド呼び出し用の配列を生成します。なお、OLEオートメーションの配列の次元と添え字の関係はVB型だという点に注意してください。これはCと逆順の並びです。

- **param** `dims` -- 各次元の要素数を示す配列を与えます。たとえば4要素のベクターであれば[4]、各3要素の2次元配列であれば[3, 3]とします。
- **param** `vt` -- 配列要素の型を[WIN32OLE::VARIANT](../../../class/WIN32OLE=3a=3aVARIANT.md)の定数で指定します。
- **return** -- 指定された次元/要素数を持つWIN32OLE_VARIANTオブジェクト。

次の例は、最初の次元が3要素、次の次元が4要素の2次元配列を生成する例です。

```ruby
ole_ary = WIN32OLE_VARIANT.array([3,4], WIN32OLE::VARIANT::VT_I4)
ruby_ary = ole_ary.value # => [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
```

- **SEE** [WIN32OLE_VARIANT#value](../../../method/WIN32OLE_VARIANT/i/value.md), [WIN32OLE::VARIANT](../../../class/WIN32OLE=3a=3aVARIANT.md)
