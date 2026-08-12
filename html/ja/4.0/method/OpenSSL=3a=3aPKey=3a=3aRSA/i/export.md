# OpenSSL::PKey::RSA#export

### def export(cipher=nil, pass=nil) -> String
### def export(cipher=nil, pass=nil){|flag| ... } -> String
### def to_pem(cipher=nil, pass=nil) -> String
### def to_pem(cipher=nil, pass=nil){|flag| ... } -> String
### def to_s(cipher=nil, pass=nil) -> String
### def to_s(cipher=nil, pass=nil){|flag| ... } -> String

鍵を PEM 形式で出力します。

cipher と pass が指定された場合、秘密鍵を暗号 cipher [OpenSSL::Cipher::Cipher](../../../class/OpenSSL=3a=3aCipher=3a=3aCipher.md)
とパスワード pass を使って暗号化します。

cipher を指定して pass を省略した場合は渡されたブロックを呼びだしてパスフレーズを要求します。ブロックの返り値をパスフレーズとみなして暗号化します。
ブロックの引数は通常は true が渡されますが、これはそのパスフレーズが秘密鍵の暗号化に使われることを意味します。
ブロックが渡されなかった場合にはターミナルに問い合わせをします。

公開鍵を出力する場合は cipher と pass は無視されます。
