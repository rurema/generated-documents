# REXML::Parent.new

### def REXML::Parent.new(parent = nil) -> REXML::Parent

REXML::Parent オブジェクトを生成します。

子ノード列は空列に初期化されます。

parent で親ノードを指定します。
親ノードへの追加は行わないため、オブジェクト生成後に親に適切に設定する必要があります。

通常、このメソッドは直接は使いません。継承先のクラスが適切にこのメソッド(initialize)を呼び出します。

- **param** `parent` -- 親ノード
