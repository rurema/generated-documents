names=width_for
visibility=public
kind=defined
source_location=manual/api/pp.md
since_by_name=width_for=3.1
until_by_name=
rbs_sig=(uninitialized)

### def PP.width_for(out) -> Integer

out の使用可能な幅を返します。以下の優先順で out の幅を決定します。

1. out が tty デバイスに割り当てられている場合、その幅を使用します。
2. そうでない場合、または幅を取得できなかった場合は、環境変数 `COLUMNS` に幅が設定されているとみなします。
3. `COLUMNS` が 0 でない数値に設定されていない場合は、80 を仮定します。

最後に、上記で求めた幅から 1 を引いた値を返します。この -1 は、Windows のコマンドプロンプトが最後の桁に到達すると自動的にカーソルを次の行へ移動してしまうことに対応するためのものです。

[m:PP.pp] は out に width を指定しなかった場合、この width_for の結果を使用します。

- **param** `out` -- 幅を調べたい出力先を指定します。

```ruby
require 'pp'
require 'stringio'

out = StringIO.new
ENV['COLUMNS'] = '100'
PP.width_for(out) # => 99
```

- **SEE** [m:PP.pp]


