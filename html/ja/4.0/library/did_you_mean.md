# library did_you_mean

名前のタイポによって [NameError](../class/NameError.md) や [NoMethodError](../class/NoMethodError.md) が起きたときに、自動的に他の似た名前を提案してくれるライブラリです。

```ruby
"Yuki".starts_with?("Y")
# ~> NoMethodError: undefined method 'starts_with?' for an instance of String
#    Did you mean?  start_with?
```

デフォルトで有効になっており、無効にするにはコマンドラインオプションで
--disable=did_you_mean を指定します。

このライブラリはbundled gem(gemファイルのみを同梱)です。詳しい内容は下記のページを参照してください。

- rubygems.org: <https://rubygems.org/gems/did_you_mean>
- プロジェクトページ: <https://github.com/ruby/did_you_mean>
- リファレンス: <https://www.rubydoc.info/gems/did_you_mean/>

- **SEE** [glossary#bundled-gem](../doc/glossary.md#bundled-gem)
