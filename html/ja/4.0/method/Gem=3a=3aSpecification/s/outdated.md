# Gem::Specification.outdated

### def Gem::Specification.outdated -> [String]
{: since="1.9.3"}

古くなっているローカルの gem の名前の一覧を返します。

このメソッドはサーバへ問い合わせて仕様書を取得する必要があるため負荷が高い処理です。
最新のリモートバージョンも合わせて取得したい場合は
[Gem::Specification.outdated_and_latest_version](../../../method/Gem=3a=3aSpecification/s/outdated_and_latest_version.md) を使ってください。

- **SEE** [Gem::Specification.outdated_and_latest_version](../../../method/Gem=3a=3aSpecification/s/outdated_and_latest_version.md)
