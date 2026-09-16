# module RubyVM::ZJIT

ZJIT の制御・情報取得のためのモジュールです。

ZJIT は CRuby に組み込まれたメソッド単位の JIT (Just-in-time compiler) コンパイラで、
Ruby 4.0 で実験的機能として導入されました。Ruby 4.0 の時点ではインタプリタより速いものの
[RubyVM::YJIT](../class/RubyVM=3a=3aYJIT.md) ほど速くはなく、本番環境での利用は推奨されていません。

有効化するには以下のいずれかの方法を使います。

- コマンドラインオプション `--zjit`
- [RubyVM::ZJIT.enable](../method/RubyVM=3a=3aZJIT/s/enable.md) による実行時の有効化

YJIT と ZJIT を同時に有効にすることはできません。

このモジュールは、ZJIT が対応していないプラットフォームや、ZJIT を含めずにビルドされた Ruby
(ビルドには Rust 1.85.0 以降が必要です)では定義されません。
このモジュールの内容は処理系の実装に強く依存し、標準ライブラリと比べて API が安定していない
可能性があります。

- **SEE** [RubyVM::YJIT](../class/RubyVM=3a=3aYJIT.md)

## Class Methods

- [dump_exit_locations](../method/RubyVM=3a=3aZJIT/s/dump_exit_locations.md)
- [enable](../method/RubyVM=3a=3aZJIT/s/enable.md)
- [enabled?](../method/RubyVM=3a=3aZJIT/s/enabled=3f.md)
- [exit_locations](../method/RubyVM=3a=3aZJIT/s/exit_locations.md)
- [reset_stats!](../method/RubyVM=3a=3aZJIT/s/reset_stats=21.md)
- [stats](../method/RubyVM=3a=3aZJIT/s/stats.md)
- [stats_enabled?](../method/RubyVM=3a=3aZJIT/s/stats_enabled=3f.md)
- [stats_string](../method/RubyVM=3a=3aZJIT/s/stats_string.md)
- [trace_exit_locations_enabled?](../method/RubyVM=3a=3aZJIT/s/trace_exit_locations_enabled=3f.md)
