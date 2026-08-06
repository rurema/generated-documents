# Ruby::Box#require

### def require(feature) -> bool

`feature` を self（レシーバのボックス）の中に読み込みます。

[Kernel?.require](../../../method/Kernel/m/require.md) と同様ですが、読み込まれたファイルは self の中で実行されます。
まだ読み込まれていなければ `true` を、すでに読み込み済みなら `false` を返します。
