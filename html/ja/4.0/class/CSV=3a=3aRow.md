# class CSV::Row < Object

[CSV::Row](../class/CSV=3a=3aRow.md) は配列やハッシュに似ています。

配列のようにフィールドの順序を保持していて、複製する事もできます。
また、ハッシュのように名前でフィールドにアクセスする事もできます。

ヘッダ行の処理が有効である場合は [CSV](../class/CSV.md) から返される全ての行はこのクラスのインスタンスです。

以下のメソッドを [Array](../class/Array.md) に委譲します。

  - empty?()
  - length()
  - size()

## Class Methods

- [new](../method/CSV=3a=3aRow/s/new.md)

## Instance Methods

- [<<](../method/CSV=3a=3aRow/i/=3c=3c.md)
- [==](../method/CSV=3a=3aRow/i/=3d=3d.md)
- [\[\]](../method/CSV=3a=3aRow/i/=5b=5d.md)
- [field](../method/CSV=3a=3aRow/i/field.md)
- [\[\]=](../method/CSV=3a=3aRow/i/=5b=5d=3d.md)
- [deconstruct](../method/CSV=3a=3aRow/i/deconstruct.md)
- [deconstruct_keys](../method/CSV=3a=3aRow/i/deconstruct_keys.md)
- [delete](../method/CSV=3a=3aRow/i/delete.md)
- [delete_if](../method/CSV=3a=3aRow/i/delete_if.md)
- [each](../method/CSV=3a=3aRow/i/each.md)
- [empty?](../method/CSV=3a=3aRow/i/empty=3f.md)
- [field?](../method/CSV=3a=3aRow/i/field=3f.md)
- [field_row?](../method/CSV=3a=3aRow/i/field_row=3f.md)
- [fields](../method/CSV=3a=3aRow/i/fields.md)
- [values_at](../method/CSV=3a=3aRow/i/values_at.md)
- [header?](../method/CSV=3a=3aRow/i/header=3f.md)
- [include?](../method/CSV=3a=3aRow/i/include=3f.md)
- [header_row?](../method/CSV=3a=3aRow/i/header_row=3f.md)
- [headers](../method/CSV=3a=3aRow/i/headers.md)
- [index](../method/CSV=3a=3aRow/i/index.md)
- [inspect](../method/CSV=3a=3aRow/i/inspect.md)
- [length](../method/CSV=3a=3aRow/i/length.md)
- [size](../method/CSV=3a=3aRow/i/size.md)
- [push](../method/CSV=3a=3aRow/i/push.md)
- [to_csv](../method/CSV=3a=3aRow/i/to_csv.md)
- [to_s](../method/CSV=3a=3aRow/i/to_s.md)
- [to_hash](../method/CSV=3a=3aRow/i/to_hash.md)

## Protected Instance Methods

- [row](../method/CSV=3a=3aRow/i/row.md)
