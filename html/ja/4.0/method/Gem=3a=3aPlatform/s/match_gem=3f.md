# Gem::Platform.match_gem?

### def Gem::Platform.match_gem?(platform, gem_name) -> bool

platform が現在の環境にインストール可能なプラットフォームかどうかを返します。

内部で `Gem.platforms` を参照し、そのいずれかと platform が一致するかどうかを調べます。
gem_name は TruffleRuby など一部の Ruby 処理系でのみ判定に使われます。

- **param** `platform` -- 判定したい [Gem::Platform](../../../class/Gem=3a=3aPlatform.md) のインスタンス、または文字列を指定します。
- **param** `gem_name` -- 対象の Gem の名前を文字列で指定します。

```ruby title="例"
p Gem::Platform.match_gem?(Gem::Platform::RUBY, "rake") # => true
```

- **SEE** [Gem::Platform.match_spec?](../../../method/Gem=3a=3aPlatform/s/match_spec=3f.md)
