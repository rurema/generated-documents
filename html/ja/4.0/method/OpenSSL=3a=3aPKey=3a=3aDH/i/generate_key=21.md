# OpenSSL::PKey::DH#generate_key!

### def generate_key! -> self

鍵パラメータ p と g から鍵対を生成しなおし、自身にセットします。

以前の鍵対の値は廃棄されます。

生成した値は [OpenSSL::PKey::DH#params_ok?](../../../method/OpenSSL=3a=3aPKey=3a=3aDH/i/params_ok=3f.md) で安全かどうかチェックしてから利用してください。

- **raise** `OpenSSL::PKey::DHError` -- 鍵の生成に失敗した場合に発生します
