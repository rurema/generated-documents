# Resolv::DNS::Resource::IN::WKS#bitmap

### def bitmap -> String

そのホストで利用可能なサービスのビットマップを返します。

例えば [Resolv::DNS::Resource::IN::WKS#protocol](../../../method/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aWKS/i/protocol.md) が 6 (TCP)
の場合、26番目のビットはポート25のサービス(SMTP)に対応しています。
このビットが立っているならば SMTP は利用可能であり、そうでなければ利用できません。
