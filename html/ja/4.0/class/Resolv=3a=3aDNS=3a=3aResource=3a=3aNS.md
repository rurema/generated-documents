# class Resolv::DNS::Resource::NS < Resolv::DNS::Resource::DomainName

DNS リソースの NS (正式な(authoritative)ネームサーバ) レコードを表す抽象クラスです。

[Resolv::DNS#getresource](../method/Resolv=3a=3aDNS/i/getresource.md) で NS レコードを得たい場合は
[Resolv::DNS::Resource::IN::NS](../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aNS.md) を使うべきです。
