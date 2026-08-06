# File.absolute_path

### def File.absolute_path(file_name, dir_string=nil) -> String

file_name を絶対パスに変換した文字列を返します。

相対パスの場合はカレントディレクトリを基準とします。
dir_string を渡した場合はそのディレクトリを基準とします。

[File.expand_path](../../../method/File/s/expand_path.md) と異なり、 file_name 先頭が "~" である場合それは展開されません。普通のディレクトリ名として処理されます。

```ruby title="例"
p Dir.getwd                      #=> "/home/matz/work/bar"
p ENV["HOME"]                    #=> "/home/matz"
p File.absolute_path("..")         #=> "/home/matz/work"
p File.absolute_path("..", "/tmp") #=> "/"
p File.absolute_path("~")          #=> "/home/matz/work/bar/~"
p File.absolute_path("~foo")       #=> "/home/matz/work/bar/~foo"
```

- **SEE** [File.expand_path](../../../method/File/s/expand_path.md)
