# Kernel?.trap

### module_function def trap(signal, command) -> String | Proc | nil
### module_function def trap(signal) { ... }  -> String | Proc | nil

signal で指定された割り込みにたいするハンドラとして
command を登録します。[Signal?.trap](../../../method/Signal/m/trap.md)と同じです。

[Signal?.trap](../../../method/Signal/m/trap.md)の使用を推奨します。

- **param** `signal` -- [Signal?.trap](../../../method/Signal/m/trap.md) 参照
- **param** `command` -- [Signal?.trap](../../../method/Signal/m/trap.md) 参照


- **SEE** [Signal?.trap](../../../method/Signal/m/trap.md),[Signal](../../../class/Signal.md)
