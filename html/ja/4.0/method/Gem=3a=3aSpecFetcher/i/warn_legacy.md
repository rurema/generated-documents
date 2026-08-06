# Gem::SpecFetcher#warn_legacy

### def warn_legacy(exception){ ... } -> bool

[Gem::SpecFetcher#fetch](../../../method/Gem=3a=3aSpecFetcher/i/fetch.md) で例外が発生した場合に呼び出されます。

RubyGems 1.2 未満で作成したリポジトリにアクセスした事が原因で例外が発生した場合には警告が表示されます。またこの場合、ブロックを与えていればブロックは評価されます。

それ以外の原因で例外が発生した場合は偽を返します。

- **param** `exception` -- 例外オブジェクトを指定します。

- **SEE** [Gem::SpecFetcher#fetch](../../../method/Gem=3a=3aSpecFetcher/i/fetch.md)
