# Time#gmt_offset

### def utc_offset     -> Integer
### def gmt_offset     -> Integer
### def gmtoff         -> Integer

協定世界時との時差を秒を単位とする数値として返します。

地方時が協定世界時よりも進んでいる場合(アジア、オーストラリアなど)
には正の値、遅れている場合(アメリカなど)には負の値になります。

```ruby title="地方時の場合"
p Time.now.zone        # => "JST"
p Time.now.utc_offset  # => 32400
```

タイムゾーンが協定世界時に設定されている場合は 0 を返します。

```ruby title="協定世界時の場合"
p Time.now.getgm.zone        # => "UTC"
p Time.now.getgm.utc_offset  # => 0
```
