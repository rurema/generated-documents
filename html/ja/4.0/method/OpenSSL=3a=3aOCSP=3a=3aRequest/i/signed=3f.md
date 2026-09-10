# OpenSSL::OCSP::Request#signed?

### def signed? -> bool

Request オブジェクトが署名されていれば true を返します。

署名の妥当性はチェックしません。署名を検証するには [OpenSSL::OCSP::Request#verify](../../../method/OpenSSL=3a=3aOCSP=3a=3aRequest/i/verify.md) を使ってください。
