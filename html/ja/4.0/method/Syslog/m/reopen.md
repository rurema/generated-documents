# Syslog?.reopen

### module_function def open!(ident=$0, options=Syslog::LOG_PID|Syslog::LOG_CONS, facility=Syslog::LOG_USER) { |syslog| ... } -> self
### module_function def reopen(ident=$0, options=Syslog::LOG_PID|Syslog::LOG_CONS, facility=Syslog::LOG_USER) { |syslog| ... } -> self

開いていた syslog を最初にクローズする点を除いて[Syslog?.open](../../../method/Syslog/m/open.md) と同じです。

- **param** `ident` -- すべてのログにつく識別子で、どのプログラムから送られたログなのかを識別するために使われる文字列を指定します。
             指定しない場合はプログラム名が使われます。

- **param** `options` -- Syslog.open や Syslog.log の動作を制御するフラグを指定します。
               指定しない場合は、Syslog::LOG_PID|Syslog::LOG_CONSの値が使われます。使用できる値は[Syslog::Constants](../../../class/Syslog=3a=3aConstants.md) を参照してください。

- **param** `facility` -- ログ出力を行うプログラムの種別を指定します。syslog はこの値にしたがって出力先となるログファイルを決定します。 詳しくは、
                [man:syslog.conf(5)], [Syslog::Constants](../../../class/Syslog=3a=3aConstants.md) を参照してください。

```ruby title="使用例"
require 'syslog'

Syslog.open("syslogtest")
Syslog.log(Syslog::LOG_WARNING, "the sky is falling in %d seconds!", 100)
begin
  Syslog.open!("syslogtest2")
  Syslog.log(Syslog::LOG_WARNING, "the sky is falling in %d seconds!", 200)
rescue RuntimeError => err
  # RuntimeError は発生しない。
  puts err
end
File.foreach('/var/log/system.log'){|line|
  print line if line =~ /the sky is/
}
```

- **SEE** [Syslog?.open](../../../method/Syslog/m/open.md)
