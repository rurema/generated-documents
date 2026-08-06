# Ruby::Box#eval

### def eval(code) -> object

文字列 `code` を Ruby のコードとして self（レシーバのボックス）の中で評価し、その結果を返します。

ファイルを [Ruby::Box#load](../../../method/Ruby=3a=3aBox/i/load.md) で読み込むのと同様に、`code` は self の中で実行されます。
