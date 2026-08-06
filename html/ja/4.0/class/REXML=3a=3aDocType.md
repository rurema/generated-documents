# class REXML::DocType < REXML::Parent

XML の DTD(文書型定義、Document Type Definition)を表すクラスです。

rexml では DTD は積極的にはサポートされていません。
デフォルトの実体定義(gt, lt, amp, quot apos)の解決のため DTD はある程度はサポートされますが、スキーマの定義や検証をしたい場合は
XML schema や RELAX NG などを使ってください。

子ノード([REXML::Parent#children](../method/REXML=3a=3aParent/i/children.md))として、
  - [REXML::ElementDecl](../class/REXML=3a=3aElementDecl.md)
  - [REXML::ExternalEntity](../class/REXML=3a=3aExternalEntity.md)
  - [REXML::Entity](../class/REXML=3a=3aEntity.md)
  - [REXML::NotationDecl](../class/REXML=3a=3aNotationDecl.md)
  - [REXML::AttlistDecl](../class/REXML=3a=3aAttlistDecl.md)
などを保持しています。

## Class Methods

- [new](../method/REXML=3a=3aDocType/s/new.md)

## Instance Methods

- [add](../method/REXML=3a=3aDocType/i/add.md)
- [attribute_of](../method/REXML=3a=3aDocType/i/attribute_of.md)
- [attributes_of](../method/REXML=3a=3aDocType/i/attributes_of.md)
- [clone](../method/REXML=3a=3aDocType/i/clone.md)
- [context](../method/REXML=3a=3aDocType/i/context.md)
- [entities](../method/REXML=3a=3aDocType/i/entities.md)
- [entity](../method/REXML=3a=3aDocType/i/entity.md)
- [external_id](../method/REXML=3a=3aDocType/i/external_id.md)
- [name](../method/REXML=3a=3aDocType/i/name.md)
- [namespaces](../method/REXML=3a=3aDocType/i/namespaces.md)
- [node_type](../method/REXML=3a=3aDocType/i/node_type.md)
- [notation](../method/REXML=3a=3aDocType/i/notation.md)
- [notations](../method/REXML=3a=3aDocType/i/notations.md)
- [public](../method/REXML=3a=3aDocType/i/public.md)
- [system](../method/REXML=3a=3aDocType/i/system.md)
- [write](../method/REXML=3a=3aDocType/i/write.md)

## Constants

- [DEFAULT_ENTITIES](../method/REXML=3a=3aDocType/c/DEFAULT_ENTITIES.md)
