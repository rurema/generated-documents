# Fiddle::MemoryView#format

### def format -> String | nil

要素のフォーマットを表す文字列を返します。詳細は [spec/memory_view](../../../doc/spec=2fmemory_view.md) を参照してください。

設定されていない場合は `nil` を返し、バイト列を表す `"C"` と同じ意味になります。

[#release](../../../method/Fiddle=3a=3aMemoryView/i/release.md) を呼んだ後は `nil` になります。
