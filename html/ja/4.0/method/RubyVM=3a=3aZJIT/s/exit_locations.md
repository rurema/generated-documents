# RubyVM::ZJIT.exit_locations

### def RubyVM::ZJIT.exit_locations -> Hash | nil

`--zjit-trace-exits` を指定して収集した、サイドイグジットが発生した位置の情報を
Stackprof で読める形式のハッシュにして返します。

`--zjit-trace-exits` が有効になっていない場合は `nil` を返します。


- **SEE** [RubyVM::ZJIT.dump_exit_locations](../../../method/RubyVM=3a=3aZJIT/s/dump_exit_locations.md)
