# OpenSSL::Buffering#each

### def each(eol=$/){|line| ... } -> ()
### def each_line(eol=$/){|line| ... } -> ()

現在の読み込み位置から1行ずつ文字列として読み込み、それを引数としてブロックを呼び出します。

[IO#each](../../../method/IO/i/each.md) と同様ですが、区切り文字列に
"" を渡した場合や、nil を渡したときの意味が異なり、これらの場合は正しく動作しません。

- **param** `eol` -- 行区切り文字列/正規表現
