# OpenSSL::PKey::EC#public_key?

### def public_key? -> bool

EC オブジェクトが公開鍵を保持していれば真を返します。

[OpenSSL::PKey::RSA](../../../class/OpenSSL=3a=3aPKey=3a=3aRSA.md) や [OpenSSL::PKey::DSA](../../../class/OpenSSL=3a=3aPKey=3a=3aDSA.md) と異なり、EC オブジェクトが公開鍵を含まない場合が存在します。
例えば、[OpenSSL::PKey::EC.new](../../../method/OpenSSL=3a=3aPKey=3a=3aEC/s/new.md) でパラメータとなる群のみを指定して EC オブジェクトを作った場合は、公開鍵も秘密鍵も保持していません。この場合 [OpenSSL::PKey::EC#generate_key](../../../method/OpenSSL=3a=3aPKey=3a=3aEC/i/generate_key.md) で鍵を生成するまで、その状態のままです。

このメソッドを呼ぶ前に [OpenSSL::Random](../../../class/OpenSSL=3a=3aRandom.md) の各モジュール関数によって乱数が適切に初期化されている必要があります。
