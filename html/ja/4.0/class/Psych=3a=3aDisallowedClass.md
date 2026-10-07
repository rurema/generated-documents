# class Psych::DisallowedClass < Psych::Exception

許可されていないクラスのオブジェクトに変換しようとしたというエラーを表す例外です。

[Psych.safe_load](../method/Psych/s/safe_load.md) などで、YAML ドキュメントにキーワード引数 `permitted_classes` で許可されていないクラスが含まれていたときに発生します。
