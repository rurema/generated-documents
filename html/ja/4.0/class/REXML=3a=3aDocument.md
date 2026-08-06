# class REXML::Document < REXML::Element

XMLの完全な文書(ドキュメント)を表すクラス。

XML処理命令(Processing Instruction, PI)、
DTD(文書型定義、Document Type Definition)、などを含んでいます。
ドキュメントは直下の子ノードをただ一つ持っています(rootと呼び、
[REXML::Document#root](../method/REXML=3a=3aDocument/i/root.md) でアクセスできます)。
2つ目の要素を([REXML::Element#add_element](../method/REXML=3a=3aElement/i/add_element.md)などで)追加しようとすると例外([RuntimeError](../class/RuntimeError.md))が発生します。

## Class Methods

- [entity_expansion_limit](../method/REXML=3a=3aDocument/s/entity_expansion_limit.md)
- [entity_expansion_limit=](../method/REXML=3a=3aDocument/s/entity_expansion_limit=3d.md)
- [entity_expansion_text_limit](../method/REXML=3a=3aDocument/s/entity_expansion_text_limit.md)
- [entity_expansion_text_limit=](../method/REXML=3a=3aDocument/s/entity_expansion_text_limit=3d.md)
- [new](../method/REXML=3a=3aDocument/s/new.md)
- [parse_stream](../method/REXML=3a=3aDocument/s/parse_stream.md)

## Instance Methods

- [<<](../method/REXML=3a=3aDocument/i/=3c=3c.md)
- [add](../method/REXML=3a=3aDocument/i/add.md)
- [clone](../method/REXML=3a=3aDocument/i/clone.md)
- [doctype](../method/REXML=3a=3aDocument/i/doctype.md)
- [encoding](../method/REXML=3a=3aDocument/i/encoding.md)
- [expanded_name](../method/REXML=3a=3aDocument/i/expanded_name.md)
- [name](../method/REXML=3a=3aDocument/i/name.md)
- [node_type](../method/REXML=3a=3aDocument/i/node_type.md)
- [root](../method/REXML=3a=3aDocument/i/root.md)
- [stand_alone?](../method/REXML=3a=3aDocument/i/stand_alone=3f.md)
- [version](../method/REXML=3a=3aDocument/i/version.md)
- [write](../method/REXML=3a=3aDocument/i/write.md)
- [xml_decl](../method/REXML=3a=3aDocument/i/xml_decl.md)

## Constants

- [DECLARATION](../method/REXML=3a=3aDocument/c/DECLARATION.md)
