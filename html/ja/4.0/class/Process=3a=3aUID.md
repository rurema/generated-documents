# module Process::UID

カレントプロセスのユーザ ID を操作するためのモジュールです。

移植性が考慮されており、プラットフォーム間の違いを吸収するように実装されています。
プラットフォームのシステムコールを直接使いたい場合には [Process::Sys](../class/Process=3a=3aSys.md)
が提供されています。[Process::Sys](../class/Process=3a=3aSys.md) と Process::UID を同時に使うことは推奨されません。

実ユーザ ID を変更するメソッドは提供されていません。
これは [Process::UID?.eid=](../method/Process=3a=3aUID/m/eid=3d.md) と [Process::UID?.re_exchange](../method/Process=3a=3aUID/m/re_exchange.md) を以下のように組み合わせることによって実現できます。

```ruby
                           # (r,e,s) == (u1,u2,??)
Process::UID.re_exchange   # (u1,u2,??) ==> (u2,u1,??)
Process::UID.eid = id      # (u2,u1,??) ==> (u2,id,??)
Process::UID.re_exchange   # (u2,id,??) ==> (id,u2,??)
```

## Module Functions

- [change_privilege](../method/Process=3a=3aUID/m/change_privilege.md)
- [eid](../method/Process=3a=3aUID/m/eid.md)
- [eid=](../method/Process=3a=3aUID/m/eid=3d.md)
- [grant_privilege](../method/Process=3a=3aUID/m/grant_privilege.md)
- [from_name](../method/Process=3a=3aUID/m/from_name.md)
- [re_exchange](../method/Process=3a=3aUID/m/re_exchange.md)
- [re_exchangeable?](../method/Process=3a=3aUID/m/re_exchangeable=3f.md)
- [rid](../method/Process=3a=3aUID/m/rid.md)
- [sid_available?](../method/Process=3a=3aUID/m/sid_available=3f.md)
- [switch](../method/Process=3a=3aUID/m/switch.md)
