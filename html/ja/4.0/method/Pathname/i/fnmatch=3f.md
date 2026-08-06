# Pathname#fnmatch?

### def fnmatch?(pattern, *args) -> bool

File.fnmatch?(pattern, self.to_s, *args) と同じです。

- **param** `pattern` -- パターンを文字列で指定します。ワイルドカードとして `*`,
               `**`, `?`, `[]`, `{}` が使用できます。詳細は [File.fnmatch](../../../method/File/s/fnmatch.md) を参照してください。

- **param** `args` -- [File.fnmatch](../../../method/File/s/fnmatch.md) を参照してください。

- **SEE** [File.fnmatch?](../../../method/File/s/fnmatch=3f.md)
