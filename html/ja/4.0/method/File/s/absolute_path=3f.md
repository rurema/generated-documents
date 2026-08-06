# File.absolute_path?

### def File.absolute_path?(file_name) -> bool

file_name が絶対パスなら true を、そうでなければ false を返します。

- **param** `file_name` -- ファイル名を表す文字列を指定します。文字列でない場合は、to_path メソッド、to_str メソッドの順で暗黙の型変換が試みられます。

- **raise** `TypeError` -- 引数に文字列以外の（暗黙の型変換が行えない）オブジェクトを指定した場合に発生します。

```ruby title="例"
p File.absolute_path?("//foo/bar\\baz") # => true
p File.absolute_path?("C:foo\\bar")   # => false
p File.absolute_path?("~")            # => false

# プラットフォームが cygwin、mswin、mingw の場合
p File.absolute_path?("C:\\foo\\bar") # => true
p File.absolute_path?("/foo/bar\\baz")  # => false

# プラットフォームが上記以外の場合
p File.absolute_path?("C:\\foo\\bar") # => false
p File.absolute_path?("/foo/bar\\baz")  # => true
```
