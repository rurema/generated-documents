# library syntax_suggest

構文エラー([SyntaxError](../class/SyntaxError.md))が起きたときに、`end` の不足や余分な `end` など、エラーの原因と思われる箇所を探してエラーメッセージに追加して表示するライブラリです。

```ruby invalid title="dog.rb"
class Dog
  def bark
    puts "Woof"
end
```

```text
$ ruby dog.rb
dog.rb: --> dog.rb

Unmatched keyword, missing `end' ?

> 1  class Dog
> 2    def bark
> 4  end
```

この表示の後に、パーサーによる通常の構文エラーメッセージが続きます。

デフォルトで有効になっており、無効にするにはコマンドラインオプションで
`--disable=syntax_suggest` を指定します。

[SyntaxError](../class/SyntaxError.md) の [Exception#detailed_message](../method/Exception/i/detailed_message.md) を上書きして、エラーメッセージにこの表示を追加しています。

プログラムからは、`require "syntax_suggest/api"` で読み込んだうえで、ソースコードの構文が正しいかを調べる `SyntaxSuggest.valid?` や、捕捉した [SyntaxError](../class/SyntaxError.md) について原因と思われる箇所を表示する `SyntaxSuggest.handle_error` が利用できます。

Ruby 3.2 で、`dead_end` gem の機能が `syntax_suggest` として Ruby に統合されました([feature:18159] を参照)。

このライブラリはdefault gemです。詳しい内容は下記のページを参照してください。

- rubygems.org: <https://rubygems.org/gems/syntax_suggest>
- プロジェクトページ: <https://github.com/ruby/syntax_suggest>
- リファレンス: <https://www.rubydoc.info/gems/syntax_suggest>

- **SEE** [did_you_mean](../library/did_you_mean.md), [error_highlight](../library/error_highlight.md), [glossary#default-gem](../doc/glossary.md#default-gem)
