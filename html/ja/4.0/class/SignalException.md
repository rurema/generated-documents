# class SignalException < Exception

捕捉していないシグナルを受け取ったときに発生します。

実際に発生したシグナル名は、
[Exception#message](../method/Exception/i/message.md) から「"SIG" + シグナル名」という形で得られます。

デフォルトの状態では、以下のシグナルが SignalException を発生させます。

  - SIGALRM
  - SIGHUP
  - SIGINT (※ただし以下参照)
  - SIGQUIT
  - SIGUSR1
  - SIGUSR2
  - SIGTERM

なお、SIGINT シグナルを受けた場合は SignalException の下位クラスである
[Interrupt](../class/Interrupt.md) が発生します。

## Class Methods

- [new](../method/SignalException/s/new.md)

## Instance Methods

- [signm](../method/SignalException/i/signm.md)
- [signo](../method/SignalException/i/signo.md)
