# library syslog/logger

[Logger](../class/Logger.md) のようなインターフェイスを用いて syslog にログを記録するためのサブライブラリです。[Syslog::Logger](../class/Syslog=3a=3aLogger.md) を使って複数のマシンでログを集約する事もできます。

デフォルトでは、[Syslog::Logger](../class/Syslog=3a=3aLogger.md) はプログラム名として 'ruby' を使用します。これを変更したい場合は [Syslog::Logger.new](../method/Syslog=3a=3aLogger/s/new.md) の第一引数にプログラム名を渡してください。

[注意] [Syslog::Logger](../class/Syslog=3a=3aLogger.md) のプログラム名の変更は最初の初期化の時だけしか行う事ができません。これは [Syslog::Logger](../class/Syslog=3a=3aLogger.md) が syslog を利用する上での制限です。(これは [man:syslog(3)] の制限でもあります)。一度
[Syslog::Logger](../class/Syslog=3a=3aLogger.md) オブジェクトを作成した後はプログラム名を変更しようとしても無視されます。

### 例

ローカルマシンの syslogd にログを保存:

```ruby
require 'syslog/logger'

log = Syslog::Logger.new 'my_program'
log.info 'this line will be logged via syslog(3)'
```

環境によっては syslog.conf の設定が必要である可能性があります。FreeBSD
では、/etc/syslog.conf に以下のような記述が必要です。

```text
!my_program
*.*                                             /var/log/my_program.log
```

この場合、/var/log/my_program.log に touch して syslogd に HUP シグナルを送信する必要があります。(Free BSD だと killall -HUP syslogd)

自動ロテートや自動圧縮などの細かい設定については、
[man:newsyslog.conf(5)] や [man:newsyslog(8)] を参照してください。
