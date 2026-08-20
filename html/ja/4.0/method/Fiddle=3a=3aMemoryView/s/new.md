# Fiddle::MemoryView.new

### def Fiddle::MemoryView.new(target) -> Fiddle::MemoryView

`target` がエクスポートしたメモリビューを保持し、 Ruby レイヤから各メンバにアクセスできるようにします。

- **param** `target` -- メモリビューをエクスポートするオブジェクトを指定します。

- **raise** `ArgumentError` -- メモリビューを取得できない場合に発生します。
