# module Process::Sys

ユーザ ID・グループ ID を操作するシステムコールを直接呼ぶためのモジュールです。

ポータブルにユーザ ID・グループ ID を操作するためのモジュール [Process::UID](../class/Process=3a=3aUID.md), [Process::GID](../class/Process=3a=3aGID.md) 
も提供されています。Process::Sys と [Process::UID](../class/Process=3a=3aUID.md) や [Process::GID](../class/Process=3a=3aGID.md) を同時に使うことは非推奨です。

## Module Functions

- [getegid](../method/Process=3a=3aSys/m/getegid.md)
- [geteuid](../method/Process=3a=3aSys/m/geteuid.md)
- [getgid](../method/Process=3a=3aSys/m/getgid.md)
- [getuid](../method/Process=3a=3aSys/m/getuid.md)
- [issetugid](../method/Process=3a=3aSys/m/issetugid.md)
- [setegid](../method/Process=3a=3aSys/m/setegid.md)
- [seteuid](../method/Process=3a=3aSys/m/seteuid.md)
- [setgid](../method/Process=3a=3aSys/m/setgid.md)
- [setregid](../method/Process=3a=3aSys/m/setregid.md)
- [setresgid](../method/Process=3a=3aSys/m/setresgid.md)
- [setresuid](../method/Process=3a=3aSys/m/setresuid.md)
- [setreuid](../method/Process=3a=3aSys/m/setreuid.md)
- [setrgid](../method/Process=3a=3aSys/m/setrgid.md)
- [setruid](../method/Process=3a=3aSys/m/setruid.md)
- [setuid](../method/Process=3a=3aSys/m/setuid.md)
