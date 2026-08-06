# class OpenSSL::HMAC < Object

HMAC を表すクラス。

HMAC とは MAC(message authentication code, ハッシュ関数(MD5やSHAなど)
と鍵の文字列をパラメータとするハッシュ関数)の一種です。

メッセージの認証に利用されます。

[OpenSSL::Digest](../class/OpenSSL=3a=3aDigest.md) のようにある与えられた文字列のハッシュ値を直接計算するインターフェースとインスタンスを生成して入力文字列を順次与えてハッシュ値を計算するインターフェースの2つがあります。

HMAC は[RFC:2104] で定義されています。

## Class Methods

- [digest](../method/OpenSSL=3a=3aHMAC/s/digest.md)
- [hexdigest](../method/OpenSSL=3a=3aHMAC/s/hexdigest.md)
- [new](../method/OpenSSL=3a=3aHMAC/s/new.md)

## Instance Methods

- [<<](../method/OpenSSL=3a=3aHMAC/i/=3c=3c.md)
- [update](../method/OpenSSL=3a=3aHMAC/i/update.md)
- [digest](../method/OpenSSL=3a=3aHMAC/i/digest.md)
- [hexdigest](../method/OpenSSL=3a=3aHMAC/i/hexdigest.md)
- [inspect](../method/OpenSSL=3a=3aHMAC/i/inspect.md)
- [to_s](../method/OpenSSL=3a=3aHMAC/i/to_s.md)
- [reset](../method/OpenSSL=3a=3aHMAC/i/reset.md)
