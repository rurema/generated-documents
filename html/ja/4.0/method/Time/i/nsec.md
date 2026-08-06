# Time#nsec

### def nsec    -> Integer
### def tv_nsec -> Integer

時刻のナノ秒の部分を整数で返します。

```ruby
t = Time.local(2000,1,2,3,4,5,6)
p "%10.9f" % t.to_f   # => "946749845.000005960"
p t.nsec              # => 6000
```

IEEE 754 浮動小数点数で表現できる精度が違うため、[Time#to_f](../../../method/Time/i/to_f.md)の最小の桁とnsecの最小の桁は異なります。nsecで表される値の方が正確です。
