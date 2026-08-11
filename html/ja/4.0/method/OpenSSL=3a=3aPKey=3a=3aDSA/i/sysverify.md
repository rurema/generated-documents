# OpenSSL::PKey::DSA#sysverify

### def sysverify(data, sign) -> bool

署名 sign と自身の公開鍵で data を検証します。

検証に成功した場合は真を返します。

sign に [OpenSSL::PKey::DSA#syssign](../../../method/OpenSSL=3a=3aPKey=3a=3aDSA/i/syssign.md) が返す DER 形式の文字列を渡さなければなりません。

data は適切なハッシュ関数で計算されたダイジェストであると仮定しています。

- **param** `data` -- 検証対象の文字列
- **param** `sign` -- 署名文字列
- **raise** `OpenSSL::PKey::DSAError` -- 検証時にエラーが起きた場合に発生します。
       正しい署名でなかった場合など、検証に失敗した場合はこの例外は発生しないことに注意してください
