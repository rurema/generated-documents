# RubyVM::YJIT.log

### def RubyVM::YJIT.log -> [[Time, String]] | nil

`--yjit-log` で収集したコンパイルログを返します。配列の各要素は、コンパイルした日時とコンパイル対象を表す文字列との組です。
ログ収集が無効な場合は `nil` を返します。


- **SEE** [RubyVM::YJIT.log_enabled?](../../../method/RubyVM=3a=3aYJIT/s/log_enabled=3f.md), [RubyVM::YJIT.enable](../../../method/RubyVM=3a=3aYJIT/s/enable.md)
