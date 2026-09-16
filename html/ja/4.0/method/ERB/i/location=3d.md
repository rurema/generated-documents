# ERB#location=

### def location=((filename, lineno))
{: since="2.2.0"}

エラーメッセージや `eval` に使われるファイル名と行番号をまとめて設定します。

- **param** `filename` -- ファイル名を文字列で指定します。
- **param** `lineno` -- 行番号を整数で指定します。nil を渡した場合、行番号は変更されません。

```ruby title="例"
require 'erb'
erb = ERB.new('<%= 1 + 1 %>')
erb.location = ['file.erb', 10]
p erb.filename # => "file.erb"
p erb.lineno   # => 10
```

- **SEE** [ERB#filename=](../../../method/ERB/i/filename=3d.md)
