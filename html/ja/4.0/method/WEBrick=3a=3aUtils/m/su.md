# WEBrick::Utils?.su

### module_function def su(user) -> ()

指定されたユーザに [Process::Sys?.setuid](../../../method/Process=3a=3aSys/m/setuid.md),
[Process::Sys?.setgid](../../../method/Process=3a=3aSys/m/setgid.md) します。

setuid できないプラットフォームでは警告を表示し、何もしません。

- **param** `user` -- ユーザを指定します。
