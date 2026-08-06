# Module#instance_method

### def instance_method(name) -> UnboundMethod

self のインスタンスメソッド name をオブジェクト化した [UnboundMethod](../../../class/UnboundMethod.md) を返します。

- **param** `name` -- メソッド名を [Symbol](../../../class/Symbol.md) または [String](../../../class/String.md) で指定します。

- **raise** `NameError` -- self に存在しないメソッドを指定した場合に発生します。

- **SEE** [Module#public_instance_method](../../../method/Module/i/public_instance_method.md), [Object#method](../../../method/Object/i/method.md)

```ruby title="例"
class Interpreter
  def do_a() print "there, "; end
  def do_d() print "Hello ";  end
  def do_e() print "!\n";     end
  def do_v() print "Dave";    end
  Dispatcher = {
    "a" => instance_method(:do_a),
    "d" => instance_method(:do_d),
    "e" => instance_method(:do_e),
    "v" => instance_method(:do_v)
  }
  def interpret(string)
    string.each_char {|b| Dispatcher[b].bind(self).call }
  end
end

interpreter = Interpreter.new
interpreter.interpret('dave')
# => Hello there, Dave!
```
