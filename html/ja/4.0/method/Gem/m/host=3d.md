# Gem?.host=

### module_function def host -> String
{: since="1.9.3"}
### module_function def host=(host)
{: since="1.9.3"}

デフォルトの RubyGems API のホストを返します。通常は `https://rubygems.org` です。

- **param** `host` -- デフォルトの RubyGems API のホストとして設定する URL です。
- **return** -- デフォルトの RubyGems API のホストです。

```ruby title="例"
p Gem.host # => "https://rubygems.org"
```
