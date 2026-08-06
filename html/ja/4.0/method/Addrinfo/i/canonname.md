# Addrinfo#canonname

### def canonname -> String|nil

カノニカル名を文字列で返します。

カノニカル名が存在しない場合には nil を返します。

カノニカル名は [Addrinfo.getaddrinfo](../../../method/Addrinfo/s/getaddrinfo.md) に [Socket::AI_CANONNAME](../../../method/Socket/c/AI_CANONNAME.md)
を指定した場合にセットされます。

```ruby
require 'socket'

list = Addrinfo.getaddrinfo("www.ruby-lang.org", 80, :INET, :STREAM, nil, Socket::AI_CANONNAME)
p list[0] #=> #<Addrinfo: 221.186.184.68:80 TCP carbon.ruby-lang.org (www.ruby-lang.org:80)>
p list[0].canonname #=> "carbon.ruby-lang.org"
```
