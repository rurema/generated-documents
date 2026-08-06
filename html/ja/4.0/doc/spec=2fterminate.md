# 終了処理

Ruby はスクリプトの終端に達した場合や捕捉していない例外が発生した場合に終了します(関数 [Kernel?.exit](../method/Kernel/m/exit.md) や [Kernel?.abort](../method/Kernel/m/abort.md)
、メインスレッドに対する [Thread.kill](../method/Thread/s/kill.md) などは
[SystemExit](../class/SystemExit.md) 例外を発生させます)。終了時には以下の処理が順に実行されます。

  1. すべてのスレッドを [Thread.kill](../method/Thread/s/kill.md) する。
  1. Ruby の擬似シグナル SIGEXIT のハンドラが登録されていればそれを実
      行する([Kernel?.trap](../method/Kernel/m/trap.md) を参照)。
  1. [spec/control#END](../doc/spec=2fcontrol.md#END) ブロック(END { ... } または関数
      [Kernel?.at_exit](../method/Kernel/m/at_exit.md) で指定したブロック)が登録されていれば、
      そのブロックを登録とは逆順に実行する。このブロックの実行中に発生
      した大域脱出はそのブロックの処理を中断するが、スクリプトはまだ終
      了しない。
  1. [ObjectSpace?.define_finalizer](../method/ObjectSpace/m/define_finalizer.md) により、ファイナ
      ライザが登録されていればそれらを実行する。実行順序は不定。
      ファイナライザ実行中に発生した大域脱出はそのファイナライザの処理
      を中断するが、スクリプトはまだ終了しない。
  1. [man:exit(3)] により終了する。このとき渡される終了ステータス値は終了方法によります。例えば、
      - スクリプトの終端に達した場合は 0
      - [Kernel?.exit](../method/Kernel/m/exit.md) に渡した引数
      - [SystemExit](../class/SystemExit.md) による例外以外は 1

関数 [Kernel?.exit!](../method/Kernel/m/exit=21.md) による終了は、[man:_exit(2)]
を実行するだけで、上記の処理はいずれも行われません。
