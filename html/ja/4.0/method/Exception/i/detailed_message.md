# Exception#detailed_message

### def detailed_message(highlight: false, **opt) -> String

例外のメッセージに情報を追加した文字列を返します。

[Exception#message](../../../method/Exception/i/message.md) との違いは、1 行目に例外クラス名が付くことです。
highlight に true を指定すると、エスケープシーケンスによる文字装飾も付きます。

[Exception#full_message](../../../method/Exception/i/full_message.md) と違い、highlight の既定値は常に false です。
[Exception.to_tty?](../../../method/Exception/s/to_tty=3f.md) の値によって変わることはありません。

- **param** `highlight` -- エスケープシーケンスによる文字装飾をつけるかどうかを
                 指定します。

- **param** `opt` -- 上書きしたメソッドが解釈するためのキーワード引数です。
             このメソッド自身は解釈せず、知らないキーワードを渡しても
             エラーになりません。

```ruby
begin
  1 / 0
rescue => e
  p e.message                          # => "divided by 0"
  p e.detailed_message                 # => "divided by 0 (ZeroDivisionError)"
  p e.detailed_message(highlight: true)
  # => "\e[1mdivided by 0 (\e[1;4mZeroDivisionError\e[m\e[1m)\e[m"
end
```

Ruby が捕捉されなかった例外を報告するときに、このメソッドの返り値が使われます。
[did_you_mean](../../../library/did_you_mean.md) や error_highlight は、このメソッドを上書きして「もしかして」の候補やエラー箇所の指示を追加しています。
そのため、実際に得られる文字列は読み込んでいるライブラリによって変わります。

このメソッドを上書きする場合は、知らないキーワード引数を渡されてもエラーにならないようにしてください。`highlight` のほか、`did_you_mean`、
`error_highlight`、`syntax_suggest` などが渡される可能性があります。

```ruby
class MyError < StandardError
  def detailed_message(highlight: false, **opt)
    "custom: #{message}"
  end
end

begin
  raise MyError, "x"
rescue => e
  p e.detailed_message # => "custom: x"
end
```

- **SEE** [Exception#message](../../../method/Exception/i/message.md), [Exception#full_message](../../../method/Exception/i/full_message.md)
