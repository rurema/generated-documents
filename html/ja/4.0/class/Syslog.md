# module Syslog

UNIXのsyslogのラッパーモジュール。
syslog の詳細については [man:syslog(3)] を参照してください。

```ruby
require 'syslog'

Syslog.open("syslogtest")
Syslog.log(Syslog::LOG_WARNING, "the sky is falling in %d seconds!", 100)
Syslog.close
# 書き込まれているか確かめる。
# 但し、実行環境によってログの場所が違う。くわしくはsyslog.confを参照。
File.foreach('/var/log/system.log'){|line|
  line.chomp!
  if /syslogtest/ =~ line
    puts line
  end
}
```

## Module Functions

- [alert](../method/Syslog/m/alert.md)
- [crit](../method/Syslog/m/crit.md)
- [debug](../method/Syslog/m/debug.md)
- [emerg](../method/Syslog/m/emerg.md)
- [err](../method/Syslog/m/err.md)
- [info](../method/Syslog/m/info.md)
- [notice](../method/Syslog/m/notice.md)
- [warning](../method/Syslog/m/warning.md)
- [close](../method/Syslog/m/close.md)
- [facility](../method/Syslog/m/facility.md)
- [ident](../method/Syslog/m/ident.md)
- [options](../method/Syslog/m/options.md)
- [instance](../method/Syslog/m/instance.md)
- [log](../method/Syslog/m/log.md)
- [mask](../method/Syslog/m/mask.md)
- [mask=](../method/Syslog/m/mask=3d.md)
- [open](../method/Syslog/m/open.md)
- [open!](../method/Syslog/m/open=21.md)
- [reopen](../method/Syslog/m/reopen.md)
- [opened?](../method/Syslog/m/opened=3f.md)
