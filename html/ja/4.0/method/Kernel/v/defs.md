# Kernel$defs

### gvar $defs -> [String]

拡張ライブラリをコンパイルするときのマクロ定義を指定する配列です。

この変数の値は、例えば

```text
["-DHAVE_FUNC", "-DHAVE_HEADER_H"]
```

のような形式の配列です。

[Kernel#have_func](../../../method/Kernel/i/have_func.md) または [Kernel#have_header](../../../method/Kernel/i/have_header.md)
を呼び出すと、その検査結果が $defs に追加されます。

[Kernel#create_header](../../../method/Kernel/i/create_header.md)
はこの変数の値を参照してヘッダファイルを生成します。
