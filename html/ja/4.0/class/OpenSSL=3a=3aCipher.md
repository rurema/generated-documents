# class OpenSSL::Cipher < Object

共通鍵暗号のために抽象化されたインターフェースを提供するクラスです。

基本的にこのクラスを直接使ってデータを暗号化することは避けてください。通常はより高水準なインターフェースが利用可能なはずです。必要なのは暗号アルゴリズムを指定するため
[OpenSSL::Cipher.new](../method/OpenSSL=3a=3aCipher/s/new.md) で暗号オブジェクトを生成することだけでしょう。

もし、このクラスを直接利用して暗号化する場合は、暗号の鍵や
IV(Initialization Vector)の取り扱いについて正しく理解してからにしてください。

以下の手順で利用します。
  - [OpenSSL::Cipher.new](../method/OpenSSL=3a=3aCipher/s/new.md) や [OpenSSL::Cipher::AES256.new](../method/OpenSSL=3a=3aCipher=3a=3aAES256/s/new.md)
    などで暗号オブジェクトを生成する
  - [OpenSSL::Cipher#encrypt](../method/OpenSSL=3a=3aCipher/i/encrypt.md), [OpenSSL::Cipher#decrypt](../method/OpenSSL=3a=3aCipher/i/decrypt.md) で
    暗号、復号のいずれをするかを設定する
  - [OpenSSL::Cipher#key=](../method/OpenSSL=3a=3aCipher/i/key=3d.md), [OpenSSL::Cipher#iv=](../method/OpenSSL=3a=3aCipher/i/iv=3d.md),
    [OpenSSL::Cipher#random_key](../method/OpenSSL=3a=3aCipher/i/random_key.md), [OpenSSL::Cipher#random_iv](../method/OpenSSL=3a=3aCipher/i/random_iv.md) などで
    鍵と IV(initialization vector) を設定する
  - [OpenSSL::Cipher#update](../method/OpenSSL=3a=3aCipher/i/update.md), [OpenSSL::Cipher#final](../method/OpenSSL=3a=3aCipher/i/final.md) で
    暗号化/復号化をする

ruby 1.8.3 から Cast5 と Idea が CAST5 と IDEA に改名されました。

### ブロック暗号モード

AES のようなブロック暗号では暗号方式を選択する際にモードを指定する必要があります。このライブラリでは以下のような文字列でモードを指定できます。
  - "CBC"
  - "CFB"
  - "ECB"
  - "OFB"
これらの文字列の意味は
[openssl#references](../library/openssl.md#references) などで調べてください。
AES を用いる場合、通常は CBC を用いれば良いでしょう。
選択肢によっては安全性に問題があるので気をつけてください。

### 使用例

```ruby
require 'openssl'
  
# 暗号化するデータ
data = "*secret data*"
# パスワード
pass = "**secret password**"
# salt
salt = OpenSSL::Random.random_bytes(8)
  
# 暗号化器を作成する
enc = OpenSSL::Cipher.new("AES-256-CBC")
enc.encrypt
# 鍵とIV(Initialize Vector)を PKCS#5 に従ってパスワードと salt から生成する
key_iv = OpenSSL::PKCS5.pbkdf2_hmac_sha1(pass, salt, 2000, enc.key_len + enc.iv_len)
key = key_iv[0, enc.key_len]
iv = key_iv[enc.key_len, enc.iv_len]
# 鍵とIVを設定する
enc.key = key
enc.iv = iv
  
# 暗号化する
encrypted_data = ""
encrypted_data << enc.update(data)
encrypted_data << enc.final
  
p encrypted_data
  
# 復号化器を作成する
dec = OpenSSL::Cipher.new("AES-256-CBC")
dec.decrypt
  
# 鍵とIVを設定する
dec.key = key
dec.iv = iv
  
# 復号化する
decrypted_data = ""
decrypted_data << dec.update(encrypted_data)
decrypted_data << dec.final
  
p decrypted_data
```

## Class Methods

- [ciphers](../method/OpenSSL=3a=3aCipher/s/ciphers.md)
- [new](../method/OpenSSL=3a=3aCipher/s/new.md)

## Instance Methods

- [block_size](../method/OpenSSL=3a=3aCipher/i/block_size.md)
- [decrypt](../method/OpenSSL=3a=3aCipher/i/decrypt.md)
- [encrypt](../method/OpenSSL=3a=3aCipher/i/encrypt.md)
- [final](../method/OpenSSL=3a=3aCipher/i/final.md)
- [iv=](../method/OpenSSL=3a=3aCipher/i/iv=3d.md)
- [iv_len](../method/OpenSSL=3a=3aCipher/i/iv_len.md)
- [key=](../method/OpenSSL=3a=3aCipher/i/key=3d.md)
- [key_len](../method/OpenSSL=3a=3aCipher/i/key_len.md)
- [key_len=](../method/OpenSSL=3a=3aCipher/i/key_len=3d.md)
- [name](../method/OpenSSL=3a=3aCipher/i/name.md)
- [padding=](../method/OpenSSL=3a=3aCipher/i/padding=3d.md)
- [pkcs5_keyivgen](../method/OpenSSL=3a=3aCipher/i/pkcs5_keyivgen.md)
- [random_iv](../method/OpenSSL=3a=3aCipher/i/random_iv.md)
- [random_key](../method/OpenSSL=3a=3aCipher/i/random_key.md)
- [reset](../method/OpenSSL=3a=3aCipher/i/reset.md)
- [update](../method/OpenSSL=3a=3aCipher/i/update.md)
