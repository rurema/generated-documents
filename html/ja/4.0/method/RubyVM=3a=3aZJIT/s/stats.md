# RubyVM::ZJIT.stats

### def RubyVM::ZJIT.stats(target_key = nil) -> Hash | object | nil

ZJIT の統計情報を返します。

`--zjit-stats` で統計収集を有効にしている場合、統計情報のカウンタ名をキーとするハッシュを返します。
`target_key` を指定した場合は、そのキーに対応する値だけを返します(該当するキーが無ければ `nil`)。
統計収集が有効でない場合は `nil` を返します。

- **param** `target_key` -- 取得したい統計情報のキーをシンボルで指定します。

```ruby
# ruby --zjit-stats で実行した場合
RubyVM::ZJIT.stats.keys.first(3)  # => [:compiled_iseq_count, :failed_iseq_count, :compile_time_ns]
RubyVM::ZJIT.stats(:compiled_iseq_count) # => 12
```

統計情報のキーの構成は処理系のバージョンによって変わります。

- **SEE** [RubyVM::ZJIT.stats_string](../../../method/RubyVM=3a=3aZJIT/s/stats_string.md), [RubyVM::ZJIT.reset_stats!](../../../method/RubyVM=3a=3aZJIT/s/reset_stats=21.md)
