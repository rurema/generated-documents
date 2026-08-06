# IO#write

### def write(*str)     -> Integer

IOポートに対して str を出力します。str が文字列でなければ to_s による文字列化を試みます。
実際に出力できたバイト数を返します。

[IO#syswrite](../../../method/IO/i/syswrite.md) を除く全ての出力メソッドは、最終的に
"write" という名のメソッドを呼び出すので、このメソッドを置き換えることで出力関数の挙動を変更できます。

- **param** `str` -- 自身に書き込みたい文字列を指定します。

- **raise** `IOError` -- 自身が書き込み用にオープンされていなければ発生します。

- **raise** `Errno::EXXX` -- 出力に失敗した場合に発生します。

```ruby title="例"
File.open("textfile", "w+") do |f|
  p f.write("This is")  # => 7
end
p File.read("textfile") # => "This is"
```

```ruby title="複数引数の例"
File.open("textfile", "w+") do |f|
  p f.write("This is", " a test\n")  # => 15
end
p File.read("textfile")            # => "This is a test\n"
```
