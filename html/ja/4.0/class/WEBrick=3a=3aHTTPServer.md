# class WEBrick::HTTPServer < WEBrick::GenericServer

HTTP サーバの機能を提供するクラスです。

以下は HTTP サーバとしてちゃんと動作する例です。

```ruby
require 'webrick'
srv = WEBrick::HTTPServer.new({:DocumentRoot => '/home/username/public_html/',
                               :BindAddress => '127.0.0.1',
                               :Port => 10080})
srv.mount('/hoge.pl', WEBrick::HTTPServlet::CGIHandler, 'really_executed_script.rb')
Signal.trap(:INT){ srv.shutdown }
srv.start
```

## Class Methods

- [new](../method/WEBrick=3a=3aHTTPServer/s/new.md)

## Instance Methods

- [mount](../method/WEBrick=3a=3aHTTPServer/i/mount.md)
- [mount_proc](../method/WEBrick=3a=3aHTTPServer/i/mount_proc.md)
- [umount](../method/WEBrick=3a=3aHTTPServer/i/umount.md)
- [unmount](../method/WEBrick=3a=3aHTTPServer/i/unmount.md)
- [virtual_host](../method/WEBrick=3a=3aHTTPServer/i/virtual_host.md)
