# ERB#lineno=

### def lineno -> Integer
{: since="2.2.0"}
### def lineno=(n)
{: since="2.2.0"}

eRuby スクリプトを `eval` するときに [Kernel?.eval](../../../method/Kernel/m/eval.md) に渡す行番号を取得・設定します。

エラーが発生した際の報告に使われます。

- **param** `n` -- 設定する行番号を整数で指定します。

```ruby title="例"
require 'erb'
erb = ERB.new('<%= 1 + 1 %>')
p erb.lineno    # => 0
erb.lineno = 3
p erb.lineno    # => 3
```

- **SEE** [ERB#filename](../../../method/ERB/i/filename.md), [ERB#filename=](../../../method/ERB/i/filename=3d.md)
