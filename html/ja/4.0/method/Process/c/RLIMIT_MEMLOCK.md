# Process::RLIMIT_MEMLOCK

### const RLIMIT_MEMLOCK -> Integer

リソースの種類が [man:mlock(2)] でロックできるトータルのサイズであることを示す定数です。

[Process?.getrlimit](../../../method/Process/m/getrlimit.md)、[Process?.setrlimit](../../../method/Process/m/setrlimit.md) で使われます。
システムによっては定義されていません。
