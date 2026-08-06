# Ruby::Box#require_relative

### def require_relative(relative_feature) -> bool

`relative_feature` を self（レシーバのボックス）の中に読み込みます。

[Kernel?.require_relative](../../../method/Kernel/m/require_relative.md) と同様ですが、読み込まれたファイルは self の中で実行されます。
