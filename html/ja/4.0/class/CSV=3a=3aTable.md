# class CSV::Table < Object

[CSV::Table](../class/CSV=3a=3aTable.md) は CSV ドキュメントを表す二次元のデータ構造です。
行単位や列単位の操作を行うことが出来ます。また必要であれば CSV に戻すこともできます。

ヘッダ行の処理が有効である場合、[CSV](../class/CSV.md) から返されるテーブルは全てこのクラスから構築されます。

以下のメソッドを [Array](../class/Array.md) に委譲します。

  - [Array#empty?](../method/Array/i/empty=3f.md)
  - [Array#length](../method/Array/i/length.md)
  - [Array#size](../method/Array/i/size.md)

### アクセスモード

以下の三種類のモードがあります。

- **`:col_or_row`**:
  デフォルトはこのモードです。このマニュアル内ではミックスモードと呼んでいます。
  行単位でアクセスするか列単位でアクセスするか自動的に判断します。
- **`:row`**:
  ロウモード。テーブルに行単位でアクセスします。
- **`:column`**:
  カラムモード。テーブルに列単位でアクセスします。

## Class Methods

- [new](../method/CSV=3a=3aTable/s/new.md)

## Instance Methods

- [<<](../method/CSV=3a=3aTable/i/=3c=3c.md)
- [==](../method/CSV=3a=3aTable/i/=3d=3d.md)
- [\[\]](../method/CSV=3a=3aTable/i/=5b=5d.md)
- [\[\]=](../method/CSV=3a=3aTable/i/=5b=5d=3d.md)
- [by_col](../method/CSV=3a=3aTable/i/by_col.md)
- [by_col!](../method/CSV=3a=3aTable/i/by_col=21.md)
- [by_col_or_row](../method/CSV=3a=3aTable/i/by_col_or_row.md)
- [by_col_or_row!](../method/CSV=3a=3aTable/i/by_col_or_row=21.md)
- [by_row](../method/CSV=3a=3aTable/i/by_row.md)
- [by_row!](../method/CSV=3a=3aTable/i/by_row=21.md)
- [delete](../method/CSV=3a=3aTable/i/delete.md)
- [delete_if](../method/CSV=3a=3aTable/i/delete_if.md)
- [each](../method/CSV=3a=3aTable/i/each.md)
- [empty?](../method/CSV=3a=3aTable/i/empty=3f.md)
- [headers](../method/CSV=3a=3aTable/i/headers.md)
- [inspect](../method/CSV=3a=3aTable/i/inspect.md)
- [length](../method/CSV=3a=3aTable/i/length.md)
- [size](../method/CSV=3a=3aTable/i/size.md)
- [mode](../method/CSV=3a=3aTable/i/mode.md)
- [push](../method/CSV=3a=3aTable/i/push.md)
- [to_a](../method/CSV=3a=3aTable/i/to_a.md)
- [to_csv](../method/CSV=3a=3aTable/i/to_csv.md)
- [to_s](../method/CSV=3a=3aTable/i/to_s.md)
- [values_at](../method/CSV=3a=3aTable/i/values_at.md)

## Protected Instance Methods

- [table](../method/CSV=3a=3aTable/i/table.md)
