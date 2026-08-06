# Kernel#create_makefile

### def create_makefile(target, srcprefix = nil) -> true
@todo

[Kernel#have_library](../../../method/Kernel/i/have_library.md) などの各種検査の結果を元に、拡張ライブラリをビルドするための Makefile を生成します。

extconf.rb は普通このメソッドの呼び出しで終ります。

- **param** `target` -- ターゲットとなる拡張ライブラリの名前を指定します。
              例えば、拡張ライブラリで "Init_foo" という関数を定義して
              いる場合は、"foo" を指定します。
              '/' を含む場合は、最後のスラッシュ以降のみをターゲット名
              として使用します。残りはトップレベルのディレクトリ名と見
              なされ、生成された Makefile はそのディレクトリ構造に従い
              ます。
              例えば、'test/foo' を指定した場合、拡張ライブラリは
              'test' ディレクトリにインストールされます。この拡張ライブ
              ラリを Ruby スクリプトから使用するときは
              "require 'test/foo'" とする必要があります。

- **param** `srcprefix` -- ソースコードがあるディレクトリ名を指定します。
                 省略した場合は extconf.rb があるディレクトリを使用します。
                 
以下のようなディレクトリ構成の場合:

```text
ext/
   extconf.rb
   test/
      foo.c
```

このようにします。

```ruby
require 'mkmf'
create_makefile('test/foo', 'test')
```

このようにして作った Makefile で 'make install' すると拡張ライブラリは、以下のパスにインストールされます。

```text
/path/to/ruby/sitearchdir/test/foo.so
```

ブロックを与える場合、生成する Makefile の設定部分を文字列の配列として
yield します。

```ruby
create_makefile('foo') {|conf|
  [
    *conf,
    "MACRO_YOU_NEED = something",
  ]
}
```

ソースディレクトリに depend ファイルが存在する場合、その内容が
[Kernel#depend_rules](../../../method/Kernel/i/depend_rules.md) メソッドで整形されて、生成される Makefile に加えられます。
