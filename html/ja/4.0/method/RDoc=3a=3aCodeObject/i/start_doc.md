# RDoc::CodeObject#start_doc

### def start_doc -> ()

以降に解析したコメントを [RDoc::CodeObject#stop_doc](../../../method/RDoc=3a=3aCodeObject/i/stop_doc.md) を呼び出すまでの間、ドキュメントに含めます。

:startdoc: を見つけた時に呼び出されます。
[RDoc::CodeObject#document_self](../../../method/RDoc=3a=3aCodeObject/i/document_self.md) と
[RDoc::CodeObject#document_children](../../../method/RDoc=3a=3aCodeObject/i/document_children.md) を true に設定します。

- **SEE** [RDoc::CodeObject#stop_doc](../../../method/RDoc=3a=3aCodeObject/i/stop_doc.md)
