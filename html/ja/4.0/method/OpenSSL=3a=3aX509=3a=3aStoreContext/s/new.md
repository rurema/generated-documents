# OpenSSL::X509::StoreContext.new

### def OpenSSL::X509::StoreContext.new(store, cert, chain=nil) -> OpenSSL::X509::StoreContext

証明書ストアコンテキストを生成します。

store には検証に必要なルート CA 証明書を含む [OpenSSL::X509::Store](../../../class/OpenSSL=3a=3aX509=3a=3aStore.md)
オブジェクトを渡します。 cert は検証対象の証明書、chain は中間 CA 証明書チェインを証明書の配列で渡します。

- **param** `store` -- ルート CA 群を持っている証明書ストア
       ([OpenSSL::X509::Store](../../../class/OpenSSL=3a=3aX509=3a=3aStore.md) オブジェクト)
- **param** `cert` -- 検証対象となる証明書([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクト)
- **param** `chain` -- 検証に利用する証明書チェイン
       ([OpenSSL::X509::Certificate](../../../class/OpenSSL=3a=3aX509=3a=3aCertificate.md) オブジェクトの配列)
- **raise** `OpenSSL::X509::StoreError` -- コンテキストの生成に失敗した場合に発生します
