# WEBrick::HTTPServer#umount

### def unmount(dir)    -> ()
### def umount(dir)     -> ()

サーバ上のディレクトリ dir とサーブレットとの対応を解消します。

- **param** `dir` -- 対応を解消するディレクトリを指定します。

```ruby
srv.mount('/img')
```
