# class JSON::Coder < Object

JSON のエンコード(シリアライズ)・デコード(パース)の設定をひとつのオブジェクトにまとめ、再利用可能にするためのクラスです。

[JSON?.generate](../method/JSON/m/generate.md), [JSON?.parse](../method/JSON/m/parse.md) のようなモジュール関数はプロセス全体で設定を共有しますが、
JSON::Coder を使うとライブラリやアプリケーションごとに独立した設定(オプションや、
JSON にネイティブ対応していない型の変換方法)を持つことができます。

[JSON::State](../class/JSON=3a=3aState.md) の `#[]`, `#[]=` メソッドの代替の手段として、
JSON::Coder の使用が案内されています。

```ruby title="例"
require "json"
require "time"

module MyApp
  API_JSON_CODER = JSON::Coder.new do |object|
    case object
    when Time
      object.iso8601(3)
    else
      object # 未対応の型。ブロックの戻り値も JSON にネイティブ対応していなければエラーになる
    end
  end
end

t = Time.utc(2025, 1, 21, 8, 41, 44, 286_000)
p MyApp::API_JSON_CODER.dump(t) # => "\"2025-01-21T08:41:44.286Z\""
```

## Class Methods

- [new](../method/JSON=3a=3aCoder/s/new.md)

## Instance Methods

- [dump](../method/JSON=3a=3aCoder/i/dump.md)
- [generate](../method/JSON=3a=3aCoder/i/generate.md)
- [load](../method/JSON=3a=3aCoder/i/load.md)
- [parse](../method/JSON=3a=3aCoder/i/parse.md)
- [load_file](../method/JSON=3a=3aCoder/i/load_file.md)
