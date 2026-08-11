# Process._fork

### def Process._fork    -> Integer

fork のための内部 API です。このメソッドを直接呼び出してはいけません。

[Kernel?.fork](../../../method/Kernel/m/fork.md)、[Process.fork](../../../method/Process/s/fork.md)、[IO.popen](../../../method/IO/s/popen.md) に "-" を渡した場合に、その内部から呼び出されます。

通常のプログラムのためではなく、アプリケーションを監視するライブラリのために用意されています。このメソッドを上書きすると、fork の前後に独自の処理を挟めます。

[Process?.daemon](../../../method/Process/m/daemon.md) も fork(2) を用いて実装されることがありますが、そちらはこのメソッドを経由しません。fork を捕捉する目的によっては、
[Process?.daemon](../../../method/Process/m/daemon.md) も併せて上書きする必要があります。

- **return** -- 子プロセスでは 0 を、親プロセスでは生成した子プロセスのプロセス ID を返します。

```ruby
module ForkMonitor
  def _fork
    pid = super
    if pid.zero?
      puts "子プロセスです"
    else
      puts "親プロセスです。子は #{pid} です"
    end
    pid
  end
end
Process.singleton_class.prepend(ForkMonitor)

pid = fork { exit }
Process.waitpid(pid)
# => 子プロセスです
#    親プロセスです。子は 70024 です
```

- **SEE** [Process.fork](../../../method/Process/s/fork.md), [Kernel?.fork](../../../method/Kernel/m/fork.md), [Process?.daemon](../../../method/Process/m/daemon.md)
