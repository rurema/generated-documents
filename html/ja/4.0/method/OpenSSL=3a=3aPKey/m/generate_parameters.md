# OpenSSL::PKey?.generate_parameters

### module_function def generate_parameters(algo_name, options = nil) -> OpenSSL::PKey::PKey
### module_function def generate_parameters(algo_name, options = nil) { ... } -> OpenSSL::PKey::PKey

アルゴリズム algo_name の新しい鍵パラメータを生成します。

options はそのアルゴリズムに固有のオプションを指定するハッシュです(省略可)。オプションを指定する順序が意味を持つ場合があります。

ブロックが渡された場合、パラメータ生成の途中経過に関する情報を引数としてブロックが呼び出されます。ブロックに渡される引数の意味はアルゴリズムの実装によって異なります。ブロックは複数回呼び出されることも、まったく呼び出されないこともあります。

指定できるオプションについては、`openssl` コマンドの `genpkey` サブコマンドのドキュメントを参照してください。

- **param** `algo_name` -- アルゴリズムを表す文字列
- **param** `options` -- アルゴリズム固有のオプションを指定するハッシュ(省略可)
- **return** -- 生成したパラメータを保持する [OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) オブジェクト

```ruby
require "openssl"
pkey = OpenSSL::PKey.generate_parameters("DSA", "dsa_paramgen_bits" => 2048)
p pkey.p.num_bits # => 2048
```
