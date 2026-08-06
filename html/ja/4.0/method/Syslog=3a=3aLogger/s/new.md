# Syslog::Logger.new

### def Syslog::Logger.new(program_name = 'ruby') -> Syslog::Logger

[Syslog::Logger](../../../class/Syslog=3a=3aLogger.md) オブジェクトを初期化します。

- **param** `program_name` -- [Logger](../../../class/Logger.md) との互換性のために用意されています。
                    プログラム名を文字列で指定できますが、最初の
                    [Syslog::Logger](../../../class/Syslog=3a=3aLogger.md) の初期化時のみ、指定した値がセッ
                    トされます(syslog の仕様で 1 つのプログラム名のみが
                    採用されます)。
