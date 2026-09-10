# OpenSSL::PKey?.generate_key

### module_function def generate_key(algo_name, options = nil) -> OpenSSL::PKey::PKey
### module_function def generate_key(algo_name, options = nil) { ... } -> OpenSSL::PKey::PKey
### module_function def generate_key(pkey, options = nil) -> OpenSSL::PKey::PKey
### module_function def generate_key(pkey, options = nil) { ... } -> OpenSSL::PKey::PKey

新しい鍵(鍵対)を生成します。

第一引数に文字列を指定した場合は、[OpenSSL::PKey?.generate_parameters](../../../method/OpenSSL=3a=3aPKey/m/generate_parameters.md) と同様に、その名前のアルゴリズムに対して新しいランダムな鍵を生成します。

第一引数に [OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) オブジェクトを指定した場合は、その鍵が保持するパラメータを使って、同じアルゴリズムの新しいランダムな鍵を生成します。

options とブロックの詳細は [OpenSSL::PKey?.generate_parameters](../../../method/OpenSSL=3a=3aPKey/m/generate_parameters.md) を参照してください。

- **param** `algo_name` -- アルゴリズムを表す文字列
- **param** `pkey` -- パラメータを流用する元になる鍵
- **param** `options` -- アルゴリズム固有のオプションを指定するハッシュ(省略可)
- **return** -- 生成した鍵を保持する [OpenSSL::PKey::PKey](../../../class/OpenSSL=3a=3aPKey=3a=3aPKey.md) オブジェクト
- **SEE** [OpenSSL::PKey?.generate_parameters](../../../method/OpenSSL=3a=3aPKey/m/generate_parameters.md)

```ruby
require "openssl"
pkey_params = OpenSSL::PKey.generate_parameters("DSA", "dsa_paramgen_bits" => 2048)
p pkey_params.priv_key # => nil
pkey = OpenSSL::PKey.generate_key(pkey_params)
p pkey.priv_key.class # => OpenSSL::BN
```
