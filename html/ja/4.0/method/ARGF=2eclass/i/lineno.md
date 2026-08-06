# ARGF.class#lineno

### def lineno -> Integer
{: since=""}

全引数ファイルを一つのファイルとみなしたときの現在の行番号を返します。
個々の引数ファイル毎の行番号を得るには ARGF.file.lineno とします。

この値を書き換えたい場合は [ARGF.class#lineno=](../../../method/ARGF=2eclass/i/lineno=3d.md) を使用してください。

```ruby
p ARGF.lineno # => 0
p ARGF.readline # => "This is line 1\n"
p ARGF.lineno # => 1
```

- **SEE** [ARGF.class#lineno=](../../../method/ARGF=2eclass/i/lineno=3d.md)
