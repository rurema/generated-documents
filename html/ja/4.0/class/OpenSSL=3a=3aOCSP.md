# module OpenSSL::OCSP

OCSP(Online Certificate Status Protocol)を取り扱うためのモジュールです。OCSP は [RFC:2560] で定義されています。

このモジュールは OCSP のリクエストとレスポンスを取り扱う機能を持っています。

OCSP レスポンダと通信する機能はありません。ユーザが例えば
OCSP over http などを実装する必要があります。

### 例

OCSP レスポンダにリクエストを送ってその返答を表示する

```ruby
require 'openssl'
require 'net/http'
# ...
subject # 問い合わせ対象の証明書(Certificate オブジェクト)
issuer # subject の発行者の証明書(Certificate オブジェクト)
store # 信頼している証明書ストア
cid = OpenSSL::OCSP::CertificateId.new(subject, issuer)
req = OpenSSL::OCSP::Request.new
req.add_certid(cid)
req.add_nonce
  
http = Net::HTTP.new('ocsp.example.com', 80)
httpres = http.post("/", req.to_der, 'content-type' => 'application/ocsp-request')
raise "HTTP error" if !httpres.kind_of?(Net::HTTPOK)
res = OpenSSL::OCSP::Response.new(httpres.body)
  
puts "Response status: #{res.status_string}"
exit if res.status != OpenSSL::OCSP::RESPONSE_STATUS_SUCCESSFUL

basic_resp = res.basic
raise "nonce error" unless [-1, 1].include?(req.check_nonce(basic_resp))
unless basic_resp.verify([], store)
  puts "verify response fail"
end
rescid, status, reason, revtime, thisupd, nextupd, exts = basic_resp.status.first
STATUS2MESSAGE = { 
  OpenSSL::OCSP::V_CERTSTATUS_GOOD => "OK", 
  OpenSSL::OCSP::V_CERTSTATUS_REVOKED => "REVOKED", 
  OpenSSL::OCSP::V_CERTSTATUS_UNKNOWN => "UNKNOWN", 
}
puts "status: #{STATUS2MESSAGE[status]}"
puts "reason: #{reason}" if status == OpenSSL::OCSP::V_CERTSTATUS_REVOKED
puts "revoked time: #{revtime}" if status == OpenSSL::OCSP::V_CERTSTATUS_REVOKED
puts "response update: #{thisupd}"
puts "response next update: #{nextupd}"
puts "extensions: "
exts.each{|ext| p ext}
```

## Constants

- [NOCASIGN](../method/OpenSSL=3a=3aOCSP/c/NOCASIGN.md)
- [NOCERTS](../method/OpenSSL=3a=3aOCSP/c/NOCERTS.md)
- [NOCHAIN](../method/OpenSSL=3a=3aOCSP/c/NOCHAIN.md)
- [NOCHECKS](../method/OpenSSL=3a=3aOCSP/c/NOCHECKS.md)
- [NODELEGATED](../method/OpenSSL=3a=3aOCSP/c/NODELEGATED.md)
- [NOEXPLICIT](../method/OpenSSL=3a=3aOCSP/c/NOEXPLICIT.md)
- [NOINTERN](../method/OpenSSL=3a=3aOCSP/c/NOINTERN.md)
- [NOSIGS](../method/OpenSSL=3a=3aOCSP/c/NOSIGS.md)
- [NOTIME](../method/OpenSSL=3a=3aOCSP/c/NOTIME.md)
- [NOVERIFY](../method/OpenSSL=3a=3aOCSP/c/NOVERIFY.md)
- [RESPID_KEY](../method/OpenSSL=3a=3aOCSP/c/RESPID_KEY.md)
- [RESPONSE_STATUS_INTERNALERROR](../method/OpenSSL=3a=3aOCSP/c/RESPONSE_STATUS_INTERNALERROR.md)
- [RESPONSE_STATUS_MALFORMEDREQUEST](../method/OpenSSL=3a=3aOCSP/c/RESPONSE_STATUS_MALFORMEDREQUEST.md)
- [RESPONSE_STATUS_SIGREQUIRED](../method/OpenSSL=3a=3aOCSP/c/RESPONSE_STATUS_SIGREQUIRED.md)
- [RESPONSE_STATUS_SUCCESSFUL](../method/OpenSSL=3a=3aOCSP/c/RESPONSE_STATUS_SUCCESSFUL.md)
- [RESPONSE_STATUS_TRYLATER](../method/OpenSSL=3a=3aOCSP/c/RESPONSE_STATUS_TRYLATER.md)
- [RESPONSE_STATUS_UNAUTHORIZED](../method/OpenSSL=3a=3aOCSP/c/RESPONSE_STATUS_UNAUTHORIZED.md)
- [REVOKED_STATUS_AFFILIATIONCHANGED](../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_AFFILIATIONCHANGED.md)
- [REVOKED_STATUS_CACOMPROMISE](../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_CACOMPROMISE.md)
- [REVOKED_STATUS_CERTIFICATEHOLD](../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_CERTIFICATEHOLD.md)
- [REVOKED_STATUS_CESSATIONOFOPERATION](../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_CESSATIONOFOPERATION.md)
- [REVOKED_STATUS_KEYCOMPROMISE](../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_KEYCOMPROMISE.md)
- [REVOKED_STATUS_NOSTATUS](../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_NOSTATUS.md)
- [REVOKED_STATUS_REMOVEFROMCRL](../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_REMOVEFROMCRL.md)
- [REVOKED_STATUS_SUPERSEDED](../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_SUPERSEDED.md)
- [REVOKED_STATUS_UNSPECIFIED](../method/OpenSSL=3a=3aOCSP/c/REVOKED_STATUS_UNSPECIFIED.md)
- [TRUSTOTHER](../method/OpenSSL=3a=3aOCSP/c/TRUSTOTHER.md)
- [V_CERTSTATUS_GOOD](../method/OpenSSL=3a=3aOCSP/c/V_CERTSTATUS_GOOD.md)
- [V_CERTSTATUS_REVOKED](../method/OpenSSL=3a=3aOCSP/c/V_CERTSTATUS_REVOKED.md)
- [V_CERTSTATUS_UNKNOWN](../method/OpenSSL=3a=3aOCSP/c/V_CERTSTATUS_UNKNOWN.md)
