# Gem::Specification#activate

### def activate -> bool
{: since="1.9.3"}

`self` を activate します。

`self` を「ロード済みの仕様書」として登録し、[Gem::Specification#require_paths](../../../method/Gem=3a=3aSpecification/i/require_paths.md)
を `$LOAD_PATH` に追加します。

同じ名前の gem が既に activate 済みの場合、バージョンが `self` と同じであれば
何もせず `false` を返します。バージョンが異なる場合は例外が発生します。
まだ同じ名前の gem が activate されていない場合は、依存関係の競合が無いことを
確認したうえで activate を行い `true` を返します。

- **return** -- activate を行った場合は `true` を、同じバージョンで既に
           activate 済みだった場合は `false` を返します。
- **raise** `Gem::LoadError` -- `self` とは異なるバージョンの同名の gem が既に activate 済みの場合に発生します。
- **raise** `Gem::ConflictError` -- 依存関係の競合がある場合に発生します。

- **SEE** [Gem::Specification#activated?](../../../method/Gem=3a=3aSpecification/i/activated=3f.md)
