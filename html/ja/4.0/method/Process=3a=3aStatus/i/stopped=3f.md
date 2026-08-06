# Process::Status#stopped?

### def stopped?    -> bool

プロセスが現在停止(終了ではない)している場合に真を返します。
[Process?.waitpid](../../../method/Process/m/waitpid.md) に [Process::WUNTRACED](../../../method/Process/c/WUNTRACED.md) フラグを設定した場合にだけ真になりえます。
