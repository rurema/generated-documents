# Gem::Specification.outdated_and_latest_version

### def Gem::Specification.outdated_and_latest_version {|local_spec, latest_version| ... } -> nil
### def Gem::Specification.outdated_and_latest_version                                     -> Enumerator
{: since="2.1.0"}

古くなっているローカルの gem について、ローカルの仕様書と最新のリモートバージョンを
ブロックに渡して評価します。

サーバの索引に対して 1 つ 1 つのローカル gem を問い合わせるため、返るまでに時間が
かかることがあります。ブロックを省略した場合は `Enumerator` を返します。

- **SEE** [Gem::Specification.outdated](../../../method/Gem=3a=3aSpecification/s/outdated.md)
