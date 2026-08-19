# module RubyVM::YJIT

YJIT (Yet Another Ruby JIT) の制御・情報取得のためのモジュールです。

YJIT は CRuby に組み込まれた JIT (Just-in-time compiler) コンパイラで、
Ruby 3.1 で実験的機能として導入されました([feature:18229])。
Ruby 3.2 で「実験的」の位置づけが外れ、Ruby 3.3 では実行時に有効化する
[RubyVM::YJIT.enable](../method/RubyVM=3a=3aYJIT/s/enable.md) が追加されるなど、以降のバージョンでも
統計収集(`--yjit-stats`)やコンパイルログ(`--yjit-log`)まわりの機能追加が続いています。

有効化するには以下のいずれかの方法を使います。

- コマンドラインオプション `--yjit`
- 環境変数 `RUBY_YJIT_ENABLE`
- (Ruby 3.3 以降) [RubyVM::YJIT.enable](../method/RubyVM=3a=3aYJIT/s/enable.md) による実行時の有効化

このモジュールは、YJIT が対応していないプラットフォームでは定義されないことがあります。

なお、Ruby 4.0 で導入された新しい JIT コンパイラである ZJIT は
`RubyVM::ZJIT` という別のモジュールで提供されており、
`RubyVM::YJIT` とは別物です。

## Class Methods

- [code_gc](../method/RubyVM=3a=3aYJIT/s/code_gc.md)
- [dump_exit_locations](../method/RubyVM=3a=3aYJIT/s/dump_exit_locations.md)
- [enable](../method/RubyVM=3a=3aYJIT/s/enable.md)
- [enabled?](../method/RubyVM=3a=3aYJIT/s/enabled=3f.md)
- [log](../method/RubyVM=3a=3aYJIT/s/log.md)
- [log_enabled?](../method/RubyVM=3a=3aYJIT/s/log_enabled=3f.md)
- [reset_stats!](../method/RubyVM=3a=3aYJIT/s/reset_stats=21.md)
- [runtime_stats](../method/RubyVM=3a=3aYJIT/s/runtime_stats.md)
- [stats_enabled?](../method/RubyVM=3a=3aYJIT/s/stats_enabled=3f.md)
- [stats_string](../method/RubyVM=3a=3aYJIT/s/stats_string.md)
