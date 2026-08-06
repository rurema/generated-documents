# OpenSSL::X509::Request#attributes

### def attributes -> [OpenSSL::X509::Attribute]

CSR が保持している attribute を [OpenSSL::X509::Attribute](../../../class/OpenSSL=3a=3aX509=3a=3aAttribute.md) 
の配列で返します。

attribute とは X.509 証明書署名要求 に含まれる申請者に関する追加的な情報です。必須ではありません。X.509v3 拡張領域を
CSR に含めるときは "reqExt" という oid の attribute を追加します。

- **SEE** [OpenSSL::X509::Request#attributes=](../../../method/OpenSSL=3a=3aX509=3a=3aRequest/i/attributes=3d.md), 
     [OpenSSL::X509::Request#add_attribute](../../../method/OpenSSL=3a=3aX509=3a=3aRequest/i/add_attribute.md)
