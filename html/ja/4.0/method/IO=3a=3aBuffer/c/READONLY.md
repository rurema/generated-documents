# IO::Buffer::READONLY

### const READONLY -> Integer

バッファが読み込み専用であることを表すフラグです。

このフラグが立っているバッファに書き込もうとすると
[IO::Buffer::AccessError](../../../class/IO=3a=3aBuffer=3a=3aAccessError.md) が発生します。
