# class RDoc::CodeObject < Object

RDoc のコードツリーを表現するクラスの基本クラスです。

以下は [RDoc::CodeObject](../class/RDoc=3a=3aCodeObject.md) のサブクラスのツリーです。

```text
 * RDoc::Context
   * RDoc::TopLevel
   * RDoc::ClassModule
     * RDoc::AnonClass
     * RDoc::NormalClass
     * RDoc::NormalModule
     * RDoc::SingleClass
 * RDoc::AnyMethod
   * RDoc::GhostMethod
   * RDoc::MetaMethod
 * RDoc::Alias
 * RDoc::Attr
 * RDoc::Constant
 * RDoc::Require
 * RDoc::Include
```

## Class Methods

- [new](../method/RDoc=3a=3aCodeObject/s/new.md)

## Instance Methods

- [comment](../method/RDoc=3a=3aCodeObject/i/comment.md)
- [comment=](../method/RDoc=3a=3aCodeObject/i/comment=3d.md)
- [document_children](../method/RDoc=3a=3aCodeObject/i/document_children.md)
- [document_children=](../method/RDoc=3a=3aCodeObject/i/document_children=3d.md)
- [document_self](../method/RDoc=3a=3aCodeObject/i/document_self.md)
- [document_self=](../method/RDoc=3a=3aCodeObject/i/document_self=3d.md)
- [documented?](../method/RDoc=3a=3aCodeObject/i/documented=3f.md)
- [metadata](../method/RDoc=3a=3aCodeObject/i/metadata.md)
- [parent](../method/RDoc=3a=3aCodeObject/i/parent.md)
- [parent=](../method/RDoc=3a=3aCodeObject/i/parent=3d.md)
- [parent_file_name](../method/RDoc=3a=3aCodeObject/i/parent_file_name.md)
- [parent_name](../method/RDoc=3a=3aCodeObject/i/parent_name.md)
- [remove_classes_and_modules](../method/RDoc=3a=3aCodeObject/i/remove_classes_and_modules.md)
- [remove_methods_etc](../method/RDoc=3a=3aCodeObject/i/remove_methods_etc.md)
- [section](../method/RDoc=3a=3aCodeObject/i/section.md)
- [section=](../method/RDoc=3a=3aCodeObject/i/section=3d.md)
- [start_doc](../method/RDoc=3a=3aCodeObject/i/start_doc.md)
- [stop_doc](../method/RDoc=3a=3aCodeObject/i/stop_doc.md)
