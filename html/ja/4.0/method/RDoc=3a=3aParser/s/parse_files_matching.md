# RDoc::Parser.parse_files_matching

### def RDoc::Parser.parse_files_matching(regexp) -> ()
{: since="1.9.1"}

regexp で指定した正規表現にマッチするファイルを解析できるパーサとして、自身を登録します。

- **param** `regexp` -- 正規表現を指定します。

新しいパーサを作成する時に使用します。

```ruby title="例"
class RDoc::Parser::Xyz < RDoc::Parser
  parse_files_matching /\.xyz$/
  # ...
end
```
