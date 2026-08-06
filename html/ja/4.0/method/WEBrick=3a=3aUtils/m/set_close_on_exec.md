# WEBrick::Utils?.set_close_on_exec

### module_function def set_close_on_exec(io)    -> ()

指定された io の Fcntl::FD_CLOEXEC を 1 に設定します。
この io は [Kernel?.exec](../../../method/Kernel/m/exec.md) などが実行される時に close されるようになります。

- **param** `io` -- IO オブジェクトを指定します。

- **SEE** [man:fcntl(2)]
