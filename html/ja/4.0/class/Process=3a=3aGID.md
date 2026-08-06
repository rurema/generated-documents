# module Process::GID

カレントプロセスのグループ ID を操作するためのモジュールです。

移植性が考慮されており、プラットフォーム間の違いを吸収するように実装されています。
プラットフォームのシステムコールを直接使いたい場合には [Process::Sys](../class/Process=3a=3aSys.md)
が提供されています。[Process::Sys](../class/Process=3a=3aSys.md) と Process::GID を同時に使うことは推奨されません。

実グループ ID を変更するメソッドは提供されていません。
これは [Process::GID?.eid=](../method/Process=3a=3aGID/m/eid=3d.md) と [Process::GID?.re_exchange](../method/Process=3a=3aGID/m/re_exchange.md) を以下のように組み合わせることによって実現できます。

```ruby
                           # (r,e,s) == (g1,g2,??)
Process::GID.re_exchange   # (g1,g2,??) ==> (g2,g1,??)
Process::GID.eid = id      # (g2,g1,??) ==> (g2,id,??)
Process::GID.re_exchange   # (g2,id,??) ==> (id,g2,??)
```

## Module Functions

- [change_privilege](../method/Process=3a=3aGID/m/change_privilege.md)
- [eid](../method/Process=3a=3aGID/m/eid.md)
- [eid=](../method/Process=3a=3aGID/m/eid=3d.md)
- [grant_privilege](../method/Process=3a=3aGID/m/grant_privilege.md)
- [from_name](../method/Process=3a=3aGID/m/from_name.md)
- [re_exchange](../method/Process=3a=3aGID/m/re_exchange.md)
- [re_exchangeable?](../method/Process=3a=3aGID/m/re_exchangeable=3f.md)
- [rid](../method/Process=3a=3aGID/m/rid.md)
- [sid_available?](../method/Process=3a=3aGID/m/sid_available=3f.md)
- [switch](../method/Process=3a=3aGID/m/switch.md)
