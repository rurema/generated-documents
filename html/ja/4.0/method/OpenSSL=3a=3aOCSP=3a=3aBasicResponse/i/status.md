# OpenSSL::OCSP::BasicResponse#status

### def status -> [[OpenSSL::OCSP::CertificateId, Integer, Integer, Time|nil, Time, Time|nil, [OpenSSL::X509::Extension]]]

証明書の状態の問い合わせの結果を返します。

この返り値には複数の問い合わせ結果が含まれています。
個々の結果は以下の内容の配列です。

```text
[ 問い合わせの CertificateId オブジェクト,
  ステータスコード,
  失効理由コード,
  失効時刻,
  最終更新時刻,
  次回更新時刻,
  拡張領域 ]
```

ステータスコードはいかのいずれかの値を取ります
  - [OpenSSL::OCSP::V_CERTSTATUS_GOOD](../../../method/OpenSSL=3a=3aOCSP/c/V_CERTSTATUS_GOOD.md) 正常
  - [OpenSSL::OCSP::V_CERTSTATUS_REVOKED](../../../method/OpenSSL=3a=3aOCSP/c/V_CERTSTATUS_REVOKED.md) 失効
  - [OpenSSL::OCSP::V_CERTSTATUS_UNKNOWN](../../../method/OpenSSL=3a=3aOCSP/c/V_CERTSTATUS_UNKNOWN.md) 不明

失効理由コードは以下のいずれかを返します。
  - [OpenSSL::OCSP::REVOKED_STATUS_NOSTATUS](../../../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_NOSTATUS.md) 
  - [OpenSSL::OCSP::REVOKED_STATUS_UNSPECIFIED](../../../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_UNSPECIFIED.md)
  - [OpenSSL::OCSP::REVOKED_STATUS_KEYCOMPROMISE](../../../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_KEYCOMPROMISE.md)
  - [OpenSSL::OCSP::REVOKED_STATUS_CACOMPROMISE](../../../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_CACOMPROMISE.md)
  - [OpenSSL::OCSP::REVOKED_STATUS_AFFILIATIONCHANGED](../../../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_AFFILIATIONCHANGED.md)
  - [OpenSSL::OCSP::REVOKED_STATUS_SUPERSEDED](../../../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_SUPERSEDED.md)
  - [OpenSSL::OCSP::REVOKED_STATUS_CESSATIONOFOPERATION](../../../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_CESSATIONOFOPERATION.md)
  - [OpenSSL::OCSP::REVOKED_STATUS_CERTIFICATEHOLD](../../../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_CERTIFICATEHOLD.md)
  - [OpenSSL::OCSP::REVOKED_STATUS_REMOVEFROMCRL](../../../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_REMOVEFROMCRL.md)

失効時刻は証明書が失効した時刻を表します。失効していない場合は nil を返します。

最終更新時刻は失効情報が更新された時刻を表します。この時刻が現在時刻より先である場合には、この Response の内容は信用できません。

次回更新時刻は、失効情報の更新予定時刻です。
この時刻が現在時刻より後である場合には、この Response の内容は信用できません。
次回更新時刻が指定されていない場合には nil を返します。

拡張領域には、[OpenSSL::X509::Extension](../../../class/OpenSSL=3a=3aX509=3a=3aExtension.md) の配列が渡されます。

結果をどのように解釈すべきか、より詳しくは [RFC:2560] や X.509 を見てください。

```ruby title="例"
p res.basic.status
# => [
#      [#<OpenSSL::OCSP::CertificateId:0x00000000e3c290>, # certificate ID
#       0,                                                # status code
#       0,                                                # reason code
#       nil,                                              # revoked time
#       2011-06-29 05:24:43 UTC,                          # update time
#       2011-07-06 05:24:43 UTC,                          # next update time
#       []]                                               # extensions
#    ]
```

- **raise** `OpenSSL::OCSP::OCSPError` -- ステータスの読み出しに失敗した場合に発生します
