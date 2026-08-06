# OpenSSL::X509::V_ERR_ERROR_IN_CERT_NOT_AFTER_FIELD

### const V_ERR_ERROR_IN_CERT_NOT_AFTER_FIELD -> Integer

証明書の notAfter フィールドの値が不正であることを意味します。

これは notAfter フィールド(証明書の期限を表すデータ)
が不正なフォーマットであることを意味し
(そもそも時刻を表現していない場合や、1月32日であるなど)、証明書が期限切れであることを意味しません。

[OpenSSL::X509::Store#error](../../../method/OpenSSL=3a=3aX509=3a=3aStore/i/error.md) や
[OpenSSL::X509::StoreContext#error](../../../method/OpenSSL=3a=3aX509=3a=3aStoreContext/i/error.md) のエラーコードとして使われます。
