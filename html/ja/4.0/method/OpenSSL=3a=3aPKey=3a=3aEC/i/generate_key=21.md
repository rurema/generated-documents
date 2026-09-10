# OpenSSL::PKey::EC#generate_key!

### def generate_key! -> self
### def generate_key -> self

鍵ペアを乱数で生成します。

OpenSSL 3.0 以降とリンクされている場合は、鍵オブジェクトが変更不可(immutable)になるためこのメソッドは利用できません。代わりに [OpenSSL::PKey::EC.generate](../../../method/OpenSSL=3a=3aPKey=3a=3aEC/s/generate.md) を使ってください。

- **raise** `OpenSSL::PKey::ECError` -- 鍵ペアの生成に失敗した場合、または OpenSSL 3.0 以降とリンクされている場合に発生します
