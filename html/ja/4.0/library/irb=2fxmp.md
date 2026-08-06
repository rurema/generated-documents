# library irb/xmp

Ruby のソースコードとその実行結果を、行ごとに交互に表示するためのライブラリです。irb を実行しなくても、使用することが出来ます。


実行結果を得るためには、[Kernel#xmp](../method/Kernel/i/xmp.md) と、[XMP#puts](../method/XMP/i/puts.md) を使った方法があります。どちらの場合も [XMP](../class/XMP.md) がコンテキスト情報を保持するため、実行結果に差分はありません。([Binding](../class/Binding.md) を指定できるタイミングは違います)

### 関数(Kernel#xmp)を使って実行結果を得る

[Kernel#xmp](../method/Kernel/i/xmp.md) では、以下のように Ruby のソースコードを文字列として渡す事で実行結果を標準出力に表示します。

```console
$ cat t.rb
require "irb/xmp"
xmp <<END
foo = 1
foo
END
$ ruby t.rb
foo = 1
    ==>1
foo
    ==>1
```

### XMP インスタンス(XMP#puts)を使って実行結果を得る

[XMP#puts](../method/XMP/i/puts.md) では、以下のように Ruby のソースコードを文字列として渡す事で実行結果を標準出力に表示します。

```console
$ cat t.rb
require "irb/xmp"
xmp = XMP.new
xmp.puts <<END
foo = 1
foo
END
xmp.puts <<END
foo
END
$ ruby t.rb
foo = 1
    ==>1
foo
    ==>1
foo
    ==>1
```

[XMP](../class/XMP.md) がコンテキスト情報を管理しているため、変数 foo を 2 度目の呼び出しでも保持しています。[Kernel#xmp](../method/Kernel/i/xmp.md) でも同様の操作を行えます。

### コンテキスト

[XMP](../class/XMP.md) メソッド群のコンテキストは、呼び出す前のコンテキストで評価されます。明示的にコンテキストを指定するとそのコンテキストで評価します。

```ruby title="例"
xmp "foo", an_binding
```

[注意] マルチスレッドには対応していません。

### 注意

[irb/xmp](../library/irb=2fxmp.md) は内部で irb を使用する事で実行結果を表示しています
([IRB::Context#prompt_mode](../method/IRB=3a=3aContext/i/prompt_mode.md) で選択できる :XMP モードはそのために用意されています)。そのため、irb プロンプト中で使用可能なコマンドを実行した時に実行結果を得る事ができる点に注意してください。(例. nil が返る事を期待して conf を実行する)
