# module Observable

Observer パターンを提供するモジュールです。

Mix-in により Observer パターンを提供します。

Observable モジュールを include したクラスは
[Observable#changed](../method/Observable/i/changed.md) メソッドにより更新フラグを立て、
[Observable#notify_observers](../method/Observable/i/notify_observers.md) が呼び出されると更新フラグが立っている場合はオブザーバに通知します
(オブザーバの update メソッドを呼び出す)。
[Observable#notify_observers](../method/Observable/i/notify_observers.md) の引数はそのままオブザーバの update メソッドに渡されます。

### サンプルコード

```ruby
require "observer"

class Ticker          ### Periodically fetch a stock price.
  include Observable

  def initialize(symbol)
    @symbol = symbol
  end

  def run
    last_price = nil
    loop do
      price = Price.fetch(@symbol)
      print "Current price: #{price}\n"
      if price != last_price
        changed                 # notify observers
        last_price = price
        notify_observers(Time.now, price)
      end
      sleep 1
    end
  end
end

class Price           ### A mock class to fetch a stock price (60 - 140).
  def self.fetch(symbol)
    60 + rand(80)
  end
end

class Warner          ### An abstract observer of Ticker objects.
  def initialize(ticker, limit)
    @limit = limit
    ticker.add_observer(self)
  end
end

class WarnLow < Warner
  def update(time, price)       # callback for observer
    if price < @limit
      print "--- #{time.to_s}: Price below #@limit: #{price}\n"
    end
  end
end

class WarnHigh < Warner
  def update(time, price)       # callback for observer
    if price > @limit
      print "+++ #{time.to_s}: Price above #@limit: #{price}\n"
    end
  end
end

ticker = Ticker.new("MSFT")
WarnLow.new(ticker, 80)
WarnHigh.new(ticker, 120)
ticker.run

# => Current price: 126
# => +++ 2017-11-02 12:09:36 +0900: Price above 120: 126
# => Current price: 102
# => Current price: 87
# => Current price: 121
```

## Instance Methods

- [add_observer](../method/Observable/i/add_observer.md)
- [changed](../method/Observable/i/changed.md)
- [changed?](../method/Observable/i/changed=3f.md)
- [count_observers](../method/Observable/i/count_observers.md)
- [delete_observer](../method/Observable/i/delete_observer.md)
- [delete_observers](../method/Observable/i/delete_observers.md)
- [notify_observers](../method/Observable/i/notify_observers.md)
