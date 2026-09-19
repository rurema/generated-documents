# Gem::Version#approximate_recommendation

### def approximate_recommendation -> String
{: since="2.0.0"}

`self` を元にした、バージョン要求の推奨文字列を返します。

`self` の先頭 2 つの数値要素(メジャー・マイナー)を使った `X.Y` の形式で、
`~> X.Y` という文字列を返します。

要素が 1 つしかない場合は `0` を補います。`self` が
[Gem::Version#prerelease?](../../../method/Gem=3a=3aVersion/i/prerelease=3f.md) であれば、末尾に `.a` を追加します。

```ruby title="例"
p Gem::Version.new("1.2.3").approximate_recommendation   # => "~> 1.2"
p Gem::Version.new("2").approximate_recommendation       # => "~> 2.0"
p Gem::Version.new("1.2.3.a").approximate_recommendation # => "~> 1.2.a"

```

- **SEE** [Gem::Version#segments](../../../method/Gem=3a=3aVersion/i/segments.md), [Gem::Version#prerelease?](../../../method/Gem=3a=3aVersion/i/prerelease=3f.md)
