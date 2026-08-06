# rb_load

### void rb_load(VALUE fname, int wrap)

参考: [ruby-list:21651]

組込み関数 [Kernel?.load](../method/Kernel/m/load.md) の低レベルインタフェースです。Rubyスクリプトが格納されたファイルfname をロードします。

引数wrapが、non-zeroなら無名のモジュールを生成して、ロードした内容をそのモジュールに閉じ込めます。閉じ込めるのは

  - 定数
  - クラス、モジュール
  - トップレベルメソッド

です。グローバル変数の変更などは閉じ込められません。
