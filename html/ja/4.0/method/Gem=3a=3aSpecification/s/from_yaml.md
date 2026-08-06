# Gem::Specification.from_yaml

### def Gem::Specification.from_yaml(input) -> Gem::Specification

YAML ファイルから gemspec をロードします。

YAML ファイルから [Gem::Specification](../../../class/Gem=3a=3aSpecification.md) をロードすると、通常の Ruby オブジェクトの初期化ルーチン (#initialize) を通りません。このメソッドは初期化ルーチンの一部を実行し、
gemspec のバージョンチェックも行います。

- **param** `input` -- 文字列か [IO](../../../class/IO.md) オブジェクトを指定します。
