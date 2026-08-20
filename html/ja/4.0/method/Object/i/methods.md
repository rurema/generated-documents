# Object#methods

### def methods(include_inherited = true) -> [Symbol]

そのオブジェクトに対して呼び出せるメソッド名の一覧を返します。
このメソッドは public メソッドおよび protected メソッドの名前を返します。

ただし特別に、引数が偽の時は [`Object#singleton_methods(false)`](../../../method/Object/i/singleton_methods.md) と同じになっています。

- **param** `include_inherited` -- 引数が偽の時は [`Object#singleton_methods(false)`](../../../method/Object/i/singleton_methods.md) と同じになります。

```ruby title="例1"
class Parent
  private;   def private_parent()   end
  protected; def protected_parent() end
  public;    def public_parent()    end
end

class Foo < Parent
  private;   def private_foo()   end
  protected; def protected_foo() end
  public;    def public_foo()    end
end

obj = Foo.new
class <<obj
    private;   def private_singleton()   end
    protected; def protected_singleton() end
    public;    def public_singleton()    end
end

# あるオブジェクトの応答できるメソッドの一覧を得る。
p obj.methods(false)
p obj.public_methods(false)
p obj.private_methods(false)
p obj.protected_methods(false)

# 実行結果
[:protected_singleton, :public_singleton]
[:public_singleton, :public_foo]
[:private_singleton, :private_foo]
[:protected_singleton, :protected_foo]
```

```ruby title="例2"
# あるオブジェクトの応答できるメソッドの一覧を得る。
# 自身のクラスの親クラスのインスタンスメソッドも含めるために true を指定して
# いるが、Object のインスタンスメソッドは一覧から排除している。
p obj.methods(true)           - Object.instance_methods(true)
p obj.public_methods(true)    - Object.public_instance_methods(true)
p obj.private_methods(true)   - Object.private_instance_methods(true)
p obj.protected_methods(true) - Object.protected_instance_methods(true)

# 実行結果
[:protected_singleton, :public_singleton, :protected_foo, :public_foo, :protected_parent, :public_parent]
[:public_singleton, :public_foo, :public_parent]
[:private_singleton, :private_foo, :private_parent]
[:protected_singleton, :protected_foo, :protected_parent]
```

メソッド名一覧を取得するメソッド同士の対比は次のとおりです。[Object#methods](../../../method/Object/i/methods.md) 系はレシーバ自身が応答できるメソッド（特異メソッドを含む）を対象にするのに対し、[Module#instance_methods](../../../method/Module/i/instance_methods.md) 系はクラス・モジュールが持つインスタンスメソッド（特異メソッドは含まない）を対象にします。

| メソッド | 対象 | 含まれる可視性 | 特異メソッド |
| --- | --- | --- | --- |
| [Object#methods](../../../method/Object/i/methods.md) | レシーバ | public, protected | 含む |
| [Object#public_methods](../../../method/Object/i/public_methods.md) | レシーバ | public | 含む |
| [Object#private_methods](../../../method/Object/i/private_methods.md) | レシーバ | private | 含む |
| [Object#protected_methods](../../../method/Object/i/protected_methods.md) | レシーバ | protected | 含む |
| [Object#singleton_methods](../../../method/Object/i/singleton_methods.md) | レシーバ | public, protected | 特異メソッドのみ |
| [Module#instance_methods](../../../method/Module/i/instance_methods.md) | self のインスタンス | public, protected | 含まない |
| [Module#public_instance_methods](../../../method/Module/i/public_instance_methods.md) | self のインスタンス | public | 含まない |
| [Module#private_instance_methods](../../../method/Module/i/private_instance_methods.md) | self のインスタンス | private | 含まない |
| [Module#protected_instance_methods](../../../method/Module/i/protected_instance_methods.md) | self のインスタンス | protected | 含まない |

継承したメソッドを含めるかどうかなどを引数で制御できますが、引数の意味はメソッドごとに異なります（[Object#methods](../../../method/Object/i/methods.md) は引数が false のとき特異メソッドのみを返します）。
詳細は各メソッドの説明を参照してください。

- **SEE** [Module#instance_methods](../../../method/Module/i/instance_methods.md),[Object#singleton_methods](../../../method/Object/i/singleton_methods.md)
