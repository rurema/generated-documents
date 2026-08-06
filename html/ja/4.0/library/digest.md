# library digest

メッセージダイジェストライブラリです。

[Digest::MD5](../class/Digest=3a=3aMD5.md) や [Digest::SHA1](../class/Digest=3a=3aSHA1.md) などの全てのメッセージダイジェストの実装クラスは、基底クラスである [Digest::Base](../class/Digest=3a=3aBase.md) と同じインタフェースを持ちます。
基本的な使い方は、MD5やSHA1など、どのアルゴリズムでも同じです。
詳しくは [Digest::Base](../class/Digest=3a=3aBase.md) を参照してください。

なお、「メッセージダイジェスト」とは、データから固定長の擬似乱数を生成する演算手法のことです。
