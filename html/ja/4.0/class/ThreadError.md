# class ThreadError < StandardError

[Thread](../class/Thread.md) 関連のエラーが起きたときに発生します。

  - カレントスレッドを [Thread#join](../method/Thread/i/join.md) しようとしたとき
  - [Thread#join](../method/Thread/i/join.md) でデッドロックしそうになったとき
  - 終了したスレッドを [Thread#wakeup](../method/Thread/i/wakeup.md) あるいは [Thread#run](../method/Thread/i/run.md) しようとしたとき
  - スレッドが一つしかないのに [Thread.stop](../method/Thread/s/stop.md) しようとしたとき
  - [Kernel?.throw](../method/Kernel/m/throw.md) がスレッド内で [Kernel?.catch](../method/Kernel/m/catch.md) されないとき
  - スレッドから return しようとしたとき

  - イテレータを与えずにスレッドを生成しようとしたとき
  - カレントスレッドの属するスレッドグループが freeze されているときに、スレッドを生成しようとしたとき

  - freeze あるいは enclose されているスレッドグループにスレッドを加えようとした時
