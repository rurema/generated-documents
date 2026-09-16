# GC.verify_internal_consistency

### def GC.verify_internal_consistency -> nil
{: since="2.1.0"}

GC 内部の一貫性を検証します。

デバッグ用のメソッドです。世代別 GC (RGenGC) をサポートしている場合は世代間の一貫性もあわせて検証します。内部に矛盾が見つかった場合はプロセスが異常終了します。

本メソッドは CRuby 以外では動作しません。

```ruby title="例"
p GC.verify_internal_consistency # => nil
```
