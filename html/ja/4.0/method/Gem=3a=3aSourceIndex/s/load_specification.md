# Gem::SourceIndex.load_specification

### def Gem::SourceIndex.load_specification(file_name) -> Gem::Specification | nil

与えられたファイル名から Ruby スクリプト形式の gemspec をロードして
[Gem::Specification](../../../class/Gem=3a=3aSpecification.md) のインスタンスを返します。

- **param** `file_name` -- ファイル名を指定します。

- **raise** `SignalException` -- gemspec をロードしているときに発生します。

- **raise** `SystemExit` -- gemspec をロードしているときに発生します。
