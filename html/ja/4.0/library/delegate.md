# library delegate

メソッドの委譲 (delegation) を行うためのライブラリです。

[Delegator](../class/Delegator.md) クラスは指定したオブジェクトにメソッドの実行を委譲します。
[Delegator](../class/Delegator.md) クラスを利用する場合はこれを継承して
[Delegator#__getobj__](../method/Delegator/i/__getobj__.md) メソッドを再定義して委譲先のオブジェクトを指定します。

[SimpleDelegator](../class/SimpleDelegator.md) は [Delegator](../class/Delegator.md) の利用例の一つであり、コンストラクタに渡されたオブジェクトにメソッドの実行を委譲します。

[Kernel#DelegateClass](../method/Kernel/i/DelegateClass.md) は 引数で渡されたクラスのインスタンスをひとつとり、そのオブジェクトにインスタンスメソッドを委譲するクラスを定義して返します。

### 参考

  - Rubyist Magazine - 標準添付ライブラリ紹介【第 6 回】委譲 <https://magazine.rubyist.net/articles/0012/0012-BundledLibraries.html>
