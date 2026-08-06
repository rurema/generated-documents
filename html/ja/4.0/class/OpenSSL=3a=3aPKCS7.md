# class OpenSSL::PKCS7 < Object

PKCS #7 クラス

PKCS #7 は暗号技術とともに用いられるデータのフォーマットの仕様です。
データやそれに対する署名、証明した日時など任意の属性を含むことができ、
S/MIME などに使用されています。

[RFC:2315] を参照してください。


### S/MIME メッセージの種類

S/MIME には以下の種類のメッセージがあります
  - enveloped-only 
  - signed-only 
    - signedData フォーマット
    - multipart/signed フォーマット
  - Certificate-only

## Class Methods

- [encrypt](../method/OpenSSL=3a=3aPKCS7/s/encrypt.md)
- [new](../method/OpenSSL=3a=3aPKCS7/s/new.md)
- [read_smime](../method/OpenSSL=3a=3aPKCS7/s/read_smime.md)
- [sign](../method/OpenSSL=3a=3aPKCS7/s/sign.md)
- [write_smime](../method/OpenSSL=3a=3aPKCS7/s/write_smime.md)

## Instance Methods

- [add_certificate](../method/OpenSSL=3a=3aPKCS7/i/add_certificate.md)
- [add_crl](../method/OpenSSL=3a=3aPKCS7/i/add_crl.md)
- [add_data](../method/OpenSSL=3a=3aPKCS7/i/add_data.md)
- [data=](../method/OpenSSL=3a=3aPKCS7/i/data=3d.md)
- [add_recipient](../method/OpenSSL=3a=3aPKCS7/i/add_recipient.md)
- [add_signer](../method/OpenSSL=3a=3aPKCS7/i/add_signer.md)
- [certificates](../method/OpenSSL=3a=3aPKCS7/i/certificates.md)
- [certificates=](../method/OpenSSL=3a=3aPKCS7/i/certificates=3d.md)
- [cipher=](../method/OpenSSL=3a=3aPKCS7/i/cipher=3d.md)
- [crls](../method/OpenSSL=3a=3aPKCS7/i/crls.md)
- [crls=](../method/OpenSSL=3a=3aPKCS7/i/crls=3d.md)
- [data](../method/OpenSSL=3a=3aPKCS7/i/data.md)
- [decrypt](../method/OpenSSL=3a=3aPKCS7/i/decrypt.md)
- [detached](../method/OpenSSL=3a=3aPKCS7/i/detached.md)
- [detached?](../method/OpenSSL=3a=3aPKCS7/i/detached=3f.md)
- [detached=](../method/OpenSSL=3a=3aPKCS7/i/detached=3d.md)
- [error_string](../method/OpenSSL=3a=3aPKCS7/i/error_string.md)
- [error_string=](../method/OpenSSL=3a=3aPKCS7/i/error_string=3d.md)
- [recipients](../method/OpenSSL=3a=3aPKCS7/i/recipients.md)
- [signers](../method/OpenSSL=3a=3aPKCS7/i/signers.md)
- [to_der](../method/OpenSSL=3a=3aPKCS7/i/to_der.md)
- [to_pem](../method/OpenSSL=3a=3aPKCS7/i/to_pem.md)
- [to_s](../method/OpenSSL=3a=3aPKCS7/i/to_s.md)
- [type](../method/OpenSSL=3a=3aPKCS7/i/type.md)
- [type=](../method/OpenSSL=3a=3aPKCS7/i/type=3d.md)
- [verify](../method/OpenSSL=3a=3aPKCS7/i/verify.md)

## Constants

- [BINARY](../method/OpenSSL=3a=3aPKCS7/c/BINARY.md)
- [DETACHED](../method/OpenSSL=3a=3aPKCS7/c/DETACHED.md)
- [NOATTR](../method/OpenSSL=3a=3aPKCS7/c/NOATTR.md)
- [NOCERTS](../method/OpenSSL=3a=3aPKCS7/c/NOCERTS.md)
- [NOCHAIN](../method/OpenSSL=3a=3aPKCS7/c/NOCHAIN.md)
- [NOINTERN](../method/OpenSSL=3a=3aPKCS7/c/NOINTERN.md)
- [NOSIGS](../method/OpenSSL=3a=3aPKCS7/c/NOSIGS.md)
- [NOSMIMECAP](../method/OpenSSL=3a=3aPKCS7/c/NOSMIMECAP.md)
- [NOVERIFY](../method/OpenSSL=3a=3aPKCS7/c/NOVERIFY.md)
- [TEXT](../method/OpenSSL=3a=3aPKCS7/c/TEXT.md)
