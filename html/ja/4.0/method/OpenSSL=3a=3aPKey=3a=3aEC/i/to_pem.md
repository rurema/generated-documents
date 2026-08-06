# OpenSSL::PKey::EC#to_pem

### def to_pem -> String

鍵を PEM 形式の文字列に変換します。

現在の仕様では [OpenSSL::PKey::RSA#to_pem](../../../method/OpenSSL=3a=3aPKey=3a=3aRSA/i/to_pem.md) のように出力をパスフレーズで暗号化することはできません。

- **raise** `OpenSSL::PKey::ECError` -- 文字列への変換に失敗した場合に発生します。
       公開鍵が含まれていない場合や、鍵が妥当でない場合などに失敗します。
