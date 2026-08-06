# class Gem::Version < Object

文字列で表現されたバージョンを比較可能 (Comparable) にするためのクラスです。

バージョンを文字列で表したとき、単純に [String#<=>](../method/String/i/=3c=3d=3e.md) で比較すると、
"1.9" のほうが "1.10" よりも大きい（バージョンが高い）ことになってしまい、正しく判定できません。
Gem::Version はこの問題を解決します。

```ruby title="文字列での比較と Gem::Version での比較"
p "1.9" < "1.10" # => false
p Gem::Version.new("1.9") < Gem::Version.new("1.10") # => true
```

gem のバージョンを取り扱うためのクラスですが、バージョン表記が RubyGems の流儀に則っていれば RubyGems とは無関係に使うこともできます。

```ruby title="バージョン表記のソートの例"
versions = %w[ 1.1  1.10  1.9  1.1.beta9  1.1.beta10 ]

p versions.sort_by{ |v| Gem::Version.new(v) }
# => ["1.1.beta9", "1.1.beta10", "1.1", "1.9", "1.10"]
```

上の例で、"1.9" と "1.10" では（数字列ではなく）整数として 9 より 10 が大きいので、"1.10" のほうが大きいと判定されています。

また、"1.1.beta9" は "beta9" の部分が数字でないものを含んでいるので "1.1" の「プレリリース」バージョンであるとみなされます。
この規則により、"1.1" と "1.1.beta9" では後者のほうが小さいと判定されています。

"1.1.beta9" と "1.1.beta10" では、"beta9" と "beta10" の部分だけが違いますが、アルファベット部分と数字部分が分割され、数字部分は整数の大小比較になるため、後者のほうが大きいと判定されます。

## Class Methods

- [correct?](../method/Gem=3a=3aVersion/s/correct=3f.md)
- [create](../method/Gem=3a=3aVersion/s/create.md)
- [new](../method/Gem=3a=3aVersion/s/new.md)

## Instance Methods

- [<=>](../method/Gem=3a=3aVersion/i/=3c=3d=3e.md)
- [bump](../method/Gem=3a=3aVersion/i/bump.md)
- [eql?](../method/Gem=3a=3aVersion/i/eql=3f.md)
- [marshal_dump](../method/Gem=3a=3aVersion/i/marshal_dump.md)
- [marshal_load](../method/Gem=3a=3aVersion/i/marshal_load.md)
- [prerelease?](../method/Gem=3a=3aVersion/i/prerelease=3f.md)
- [release](../method/Gem=3a=3aVersion/i/release.md)
- [to_s](../method/Gem=3a=3aVersion/i/to_s.md)
- [version](../method/Gem=3a=3aVersion/i/version.md)

## Constants

- [Requirement](../method/Gem=3a=3aVersion/c/Requirement.md)
