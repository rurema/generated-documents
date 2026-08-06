# Process::Status#coredump?

### def coredump?    -> bool

終了時にコアダンプしていたら真を返します。

このメソッドは signaled? が真のときにしか意味を持ちません。

このメソッドはシステムに依存します。サポートしないプラットフォームでは常に false を返します。
