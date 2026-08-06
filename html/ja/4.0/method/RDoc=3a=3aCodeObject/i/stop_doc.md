# RDoc::CodeObject#stop_doc

### def stop_doc -> ()

以降に解析したコメントを [RDoc::CodeObject#start_doc](../../../method/RDoc=3a=3aCodeObject/i/start_doc.md) を呼び出すまでの間、ドキュメントに含めません。

:stopdoc: を見つけた時に呼び出されます。
[RDoc::CodeObject#document_self](../../../method/RDoc=3a=3aCodeObject/i/document_self.md) と
[RDoc::CodeObject#document_children](../../../method/RDoc=3a=3aCodeObject/i/document_children.md) を false に設定します。

- **SEE** [RDoc::CodeObject#start_doc](../../../method/RDoc=3a=3aCodeObject/i/start_doc.md)
