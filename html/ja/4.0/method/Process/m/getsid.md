# Process?.getsid

### module_function def getsid(pid = 0) -> Integer

引数 pid で指定されたプロセスのセッション ID を返します。

- **param** `pid` -- プロセス ID を整数で指定します。省略した場合、0 を指定した場合は現在のプロセスの ID を指定した場合と同じ動作になります。

- **raise** `NotImplementedError` -- メソッドが現在のプラットフォームで実装されていない場合に発生します。

```ruby
p Process.getsid()            # => 27422
p Process.getsid(0)           # => 27422
p Process.getsid(Process.pid()) # => 27422
```

- **SEE** [man:getsid(2)]
