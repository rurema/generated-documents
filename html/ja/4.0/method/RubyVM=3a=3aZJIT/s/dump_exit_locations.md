# RubyVM::ZJIT.dump_exit_locations

### def RubyVM::ZJIT.dump_exit_locations(filename) -> Integer

`--zjit-trace-exits` を指定して収集した、サイドイグジットが発生した位置の情報を
Marshal 形式で `filename` にダンプします。ダンプしたファイルは Stackprof で読み込んで解析できます。

- **param** `filename` -- ダンプ先のファイル名。
- **return** -- ファイルに書き込んだバイト数を返します。
- **raise** `ArgumentError` -- `--zjit-trace-exits` が有効になっていない場合に発生します。


- **SEE** [RubyVM::ZJIT.exit_locations](../../../method/RubyVM=3a=3aZJIT/s/exit_locations.md)
