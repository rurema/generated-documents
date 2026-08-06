# class RuntimeError < StandardError

特定の例外クラスには該当しないエラーが起こったときに発生します。
また [Kernel?.raise](../method/Kernel/m/raise.md) で例外クラスを指定しなかった場合も
RuntimeError が発生します。
