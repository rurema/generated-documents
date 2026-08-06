# Module#public_constant

### def public_constant(*name) -> self

name で指定した定数の可視性を public に変更します。

- **param** `name` -- 0 個以上の [String](../../../class/String.md) か [Symbol](../../../class/Symbol.md) を指定します。

- **raise** `NameError` -- 存在しない定数を指定した場合に発生します。

- **return** -- self を返します。

```ruby title="例"
module SampleModule
  class SampleInnerClass
  end

  # => 非公開クラスであることを明示するために private にする
  private_constant :SampleInnerClass
end

begin
  SampleModule::SampleInnerClass
rescue => e
  e # => #<NameError: private constant SampleModule::SampleInnerClass referenced>
end

module SampleModule
  # => 非公開クラスであることは承知で利用するために public にする
  public_constant :SampleInnerClass
end

p SampleModule::SampleInnerClass # => SampleModule::SampleInnerClass
```

- **SEE** [Module#private_constant](../../../method/Module/i/private_constant.md)
