# OpenSSL::OCSP::BasicResponse#add_status

### def add_status(cid, status, reason, revtime, thisupd, nextupd, exts) -> self

証明書の状態の問い合わせの結果をオブジェクトに追加します。

詳しくは [OpenSSL::OCSP::BasicResponse#status](../../../method/OpenSSL=3a=3aOCSP=3a=3aBasicResponse/i/status.md) を見てください。

- **param** `cid` -- 問い合わせの([OpenSSL::OCSP::CertificateId](../../../class/OpenSSL=3a=3aOCSP=3a=3aCertificateId.md) オブジェクト)
- **param** `status` -- ステータスコード(整数)
- **param** `reason` -- 失効理由コード(整数)
- **param** `revtime` -- 失効時刻([Time](../../../class/Time.md) オブジェクトもしくは nil)
- **param** `thisupd` -- 最終更新時刻([Time](../../../class/Time.md) オブジェクト)
- **param** `nextupd` -- 次回更新時刻([Time](../../../class/Time.md) オブジェクト)
- **param** `exts` --  拡張領域([OpenSSL::X509::Extension](../../../class/OpenSSL=3a=3aX509=3a=3aExtension.md) オブジェクトの配列)
