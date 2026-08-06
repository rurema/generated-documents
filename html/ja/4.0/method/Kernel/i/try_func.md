# Kernel#try_func

### def try_func(func, libs, headers = nil) -> bool
### def try_func(func, libs, headers = nil){ ... } -> bool

関数 func がシステムに存在するかどうか検査します。
[Kernel#have_func](../../../method/Kernel/i/have_func.md) を使ってください。

- **param** `func` -- 関数名を指定します。

- **param** `libs` -- ライブラリの名前を指定します。

- **param** `headers` -- 関数 func を使用するのに必要なヘッダファイル名を指定しま
               す。これは関数の型をチェックするためではなく、関数が実際
               にはマクロで定義されている場合などのために使用します。
