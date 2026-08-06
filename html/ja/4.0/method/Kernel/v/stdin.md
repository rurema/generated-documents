# Kernel$stdin

### gvar $stdin -> object

標準入力です。

自プロセスの標準入力をリダイレクトしたいときは
$stdin に代入すれば十分です。

```ruby title="例"
# 標準入力の入力元 /tmp/foo に変更
$stdin = File.open("/tmp/foo", "r")
gets               # 入力する
$stdin = STDIN     # 元に戻す
```

ただし、[Kernel?.gets](../../../method/Kernel/m/gets.md) など、特定の組み込みメソッドは
$stdin オブジェクトにメソッドを転送して実装されています。
従って、[Kernel?.gets](../../../method/Kernel/m/gets.md) などが正しく動作するには、
$stdin オブジェクトに代入したオブジェクトが以下のメソッドを正しく実装していなければいけません。

```text
gets, readline, readlines, getc, readchar, tell, seek,
pos=, rewind, fileno, to_io, eof, each_line, each_byte,
binmode, closed?
```

```ruby title="例"
$stdin = Object.new
def $stdin.gets
  "foo"
end
p gets()  # => "foo"
```

自プロセスだけでなく、子プロセスの標準入力もリダイレクトしたいときは以下のように [IO#reopen](../../../method/IO/i/reopen.md) を使います。

```ruby title="例"
$stdin.reopen("/tmp/foo")
```

また、リダイレクトしたあと入力先をまた元に戻したい場合は以下のようにします。

```ruby title="例"
stdin_old = $stdin.dup       # 元の $stdin を保存する
$stdin.reopen("/tmp/foo")    # $stdin を /tmp/foo にリダイレクトする
gets                         # /tmp/foo から入力
$stdin.reopen stdin_old      # 元に戻す
```

$stdin はグローバルスコープです。
