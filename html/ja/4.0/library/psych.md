# library psych

[yaml](../library/yaml.md) のバックエンドライブラリです。libyaml ベースで作成されており、YAML バージョン 1.1 を扱う事ができます。


### 概要

Psych を用いると YAML のパースと出力ができます。
これらの機能は libyaml <https://pyyaml.org/wiki/LibYAML> を用いて実装されています。さらに Ruby の大半のオブジェクトと YAML フォーマットのデータの間を相互に変換できます。

### 基本的な使いかた

```ruby
require 'psych'
# YAML のテキストをパースする
p Psych.load("--- foo") # => "foo"

# YAML のデータを出力
p Psych.dump("foo")   # => "--- foo\n...\n"
p({ :a => 'b'}.to_yaml) # => "---\n:a: b\n"
```

基本的な使い方はこれだけです。簡単な用事は
[Psych.load](../method/Psych/s/load.md)、[Psych.dump](../method/Psych/s/dump.md) で片付きます。

#### YAML のパース

Psych は YAML ドキュメントのパースができます。
ユーザの必要に応じ、高水準な API から低水準な API まで用意されています。
最も低水準なものは、イベントベースな API です。中程度の水準のものとして
YAML の AST(Abstract Syntax Tree)にアクセスする APIがあります。
高水準な API では、YAML のドキュメントを Ruby のオブジェクトに変換できます。

##### 低水準 パース API

低水準のパース API は利用者が入力となる YAML ドキュメントについてすでに良く知っていて、AST を構築したり Ruby のオブジェクトに変換するのが無駄である場合に使います。この API については
[Psych::Parser](../class/Psych=3a=3aParser.md) を参照してください。イベントベースの API です。

##### 中水準 パース API

Psych には YAML ドキュメントの AST にアクセスする API があります。
この AST は [Psych::Parser](../class/Psych=3a=3aParser.md) と [Psych::TreeBuilder](../class/Psych=3a=3aTreeBuilder.md) で構築します。
[Psych.parse_stream](../method/Psych/s/parse_stream.md)、[Psych::Nodes](../class/Psych=3a=3aNodes.md)、[Psych::Nodes::Node](../class/Psych=3a=3aNodes=3a=3aNode.md)
などを経由して AST を解析したり操作したりできます。

##### 高水準 パース API

YAML ドキュメントをパースして Ruby のオブジェクトに変換できます。
詳しくは [Psych.load](../method/Psych/s/load.md) を見てください。

#### YAML ドキュメントの出力

Psych は YAML ドキュメントを出力する機能があります。
高・中・低の三つの水準の API があります。
低水準 API はイベントベースの API で、中水準のものは AST を構築する API、高水準の API は Ruby のオブジェクトを直接 YAML ドキュメントに変換する API
です。これはパースの高・中・低水準 API と対応しています。

##### 低水準出力 API

低水準出力 API はイベントベースな仕組みです。
各イベントは [Psych::Emitter](../class/Psych=3a=3aEmitter.md) オブジェクトに送られます。
このオブジェクトには、各イベントをどのように YAML ドキュメントに変換するかをセットしておきます。
この API は出力フォーマットがあらかじめわかっている場合や性能が重要な場合に利用します。

詳しくは [Psych::Emitter](../class/Psych=3a=3aEmitter.md) を見てください。

#####  中水準出力 API 

中水準 API では、利用者が AST を構築し YAML ドキュメントに変換します。
この AST は YAML ドキュメントをパースして得られるものと同じものです。
詳しくは
[Psych::Nodes](../class/Psych=3a=3aNodes.md)、[Psych::Nodes::Node](../class/Psych=3a=3aNodes=3a=3aNode.md)、[Psych::TreeBuilder](../class/Psych=3a=3aTreeBuilder.md)
を参照してください。

##### 高水準出力 API

高水準 API を使うと Ruby のデータ構造(オブジェクト)を YAML のドキュメントに変換できます。
詳しくは [Psych.dump](../method/Psych/s/dump.md) を参照してください。
