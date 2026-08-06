# Thread#raise

### def raise(error_type, message, traceback)     -> ()

自身が表すスレッドで強制的に例外を発生させます。

- **param** `error_type` -- [Kernel?.raise](../../../method/Kernel/m/raise.md) を参照してください。

- **param** `message` -- [Kernel?.raise](../../../method/Kernel/m/raise.md) を参照してください。

- **param** `traceback` -- [Kernel?.raise](../../../method/Kernel/m/raise.md) を参照してください。

```text
Thread.new {
  sleep 1
  Thread.main.raise "foobar"
}

begin
  sleep
rescue
  p $!, $@
end

=> #<RuntimeError: foobar>
   ["-:3"]
```
