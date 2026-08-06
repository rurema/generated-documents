# Resolv::DNS#getresource

### def getresource(name, typeclass) -> Resolv::DNS::Resource

nameに対応するDNSリソースレコードを取得します。
最初に見つかったリソースを返します。

typeclass は以下のいずれかです。
  - [Resolv::DNS::Resource::IN::ANY](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aANY.md)
  - [Resolv::DNS::Resource::IN::NS](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aNS.md)
  - [Resolv::DNS::Resource::IN::CNAME](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aCNAME.md)
  - [Resolv::DNS::Resource::IN::SOA](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aSOA.md)
  - [Resolv::DNS::Resource::IN::HINFO](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aHINFO.md)
  - [Resolv::DNS::Resource::IN::MINFO](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aMINFO.md)
  - [Resolv::DNS::Resource::IN::MX](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aMX.md)
  - [Resolv::DNS::Resource::IN::TXT](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aTXT.md)
  - [Resolv::DNS::Resource::IN::A](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aA.md)
  - [Resolv::DNS::Resource::IN::WKS](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aWKS.md)
  - [Resolv::DNS::Resource::IN::PTR](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aPTR.md)
  - [Resolv::DNS::Resource::IN::AAAA](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aAAAA.md)
  - [Resolv::DNS::Resource::IN::SRV](../../../class/Resolv=3a=3aDNS=3a=3aResource=3a=3aIN=3a=3aSRV.md)

ルックアップ結果は Resolv::DNS::Resource （のサブクラス）のインスタンスとなります。
typeclass に Resolv::DNS::Resource::IN::ANY 以外を指定した場合にはそのクラスのインスタンスを返します。

- **param** `name` -- ルックアップ対象となる名前を [Resolv::DNS::Name](../../../class/Resolv=3a=3aDNS=3a=3aName.md) または String で指定します。
- **param** `typeclass` -- レコード種別を指定します。
- **raise** `Resolv::ResolvError` -- ルックアップに失敗した場合に発生します。
