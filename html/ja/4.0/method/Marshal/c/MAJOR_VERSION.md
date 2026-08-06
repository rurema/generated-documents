# Marshal::MAJOR_VERSION

### const MAJOR_VERSION -> Integer
### const MINOR_VERSION -> Integer

[Marshal?.dump](../../../method/Marshal/m/dump.md) が出力するデータフォーマットのバージョン番号です。

[Marshal?.load](../../../method/Marshal/m/load.md) は、メジャーバージョンが異なるか、バージョンの大きなマーシャルデータを読み込んだとき例外 [TypeError](../../../class/TypeError.md) を発生させます。

マイナーバージョンが古いだけのフォーマットは読み込み可能ですが、
[m:$VERBOSE] = true のときには警告メッセージが出力されます

マーシャルされたデータのバージョン番号は以下のようにして取得できます。

```ruby title="例"
obj = Object.new
major, minor = Marshal.dump(obj).unpack("cc")
p [major, minor]
# => [4, 8]
```
