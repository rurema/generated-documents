# OpenSSL::OCSP::BasicResponse#add_nonce

### def add_nonce(val=nil) -> self

BasicResponse に nonce を追加します。

引数を省略すると、ランダムな nonce を生成し利用します。

通常はこのメソッドを使わず [OpenSSL::OCSP::BasicResponse#copy_nonce](../../../method/OpenSSL=3a=3aOCSP=3a=3aBasicResponse/i/copy_nonce.md) を用います。

- **param** `val` -- 追加する nonce の値(文字列)
