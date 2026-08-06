# REXML::Text#doctype

### def doctype -> REXML::DocType | nil

テキストノードが属する文書の DTD を返します。

そのような文書([REXML::Document](../../../class/REXML=3a=3aDocument.md))が存在しない、すなわちテキストノードの親ノードを辿っても REXML::Document に到達しない、場合には nil を返します。

- **SEE** [REXML::DocType](../../../class/REXML=3a=3aDocType.md)
