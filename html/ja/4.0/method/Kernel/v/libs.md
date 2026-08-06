# Kernel$libs

### gvar $libs -> String

拡張ライブラリをリンクするときに一緒にリンクされるライブラリを指定する文字列です。

この変数の値は、例えば

```text
"-lfoo -lbar"
```

のような形式の文字列です。

[Kernel#have_library](../../../method/Kernel/i/have_library.md) または [Kernel#find_library](../../../method/Kernel/i/find_library.md)
を呼び出すと、その検査結果が間に空白をはさみつつ $libs に連結されます。
