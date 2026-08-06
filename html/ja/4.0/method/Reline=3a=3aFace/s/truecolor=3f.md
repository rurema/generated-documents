# Reline::Face.truecolor?

### def Reline::Face.truecolor? -> bool

端末をトゥルーカラー対応として扱うかどうかを返します。環境変数 `COLORTERM`
が `truecolor` または `24bit` の場合、もしくは [Reline::Face.force_truecolor](../../../method/Reline=3a=3aFace/s/force_truecolor.md)
を呼んだ後に真を返します。

- **SEE** [Reline::Face.force_truecolor](../../../method/Reline=3a=3aFace/s/force_truecolor.md)
