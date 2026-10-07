# class Psych::AliasesNotEnabled < Psych::BadAlias

エイリアスの読み込みが許可されていないのに、YAML ドキュメントがエイリアスを含んでいるというエラーを表す例外です。

[Psych.safe_load](../method/Psych/s/safe_load.md) などで、キーワード引数 `aliases` が false のときに発生します。
