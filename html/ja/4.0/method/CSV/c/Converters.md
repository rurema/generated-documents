# CSV::Converters

### const Converters -> Hash

このハッシュは名前でアクセスできる組み込みの変換器を保持しています。

[CSV#convert](../../../method/CSV/i/convert.md) で使用する変換器として使用できます。
また [CSV.new](../../../method/CSV/s/new.md) のオプションとして使用することもできます。

- **`:integer`**:
  [Kernel?.Integer](../../../method/Kernel/m/Integer.md) を使用してフィールドを変換します。
- **`:float`**:
  [Kernel?.Float](../../../method/Kernel/m/Float.md) を使用してフィールドを変換します。
- **`:numeric`**:
  :integer と :float の組み合わせです。
- **`:date`**:
  [Date.parse](../../../method/Date/s/parse.md) を使用してフィールドを変換します。
- **`:date_time`**:
  [DateTime.parse](../../../method/DateTime/s/parse.md) を使用してフィールドを変換します。
- **`:all`**:
  :date_time と :numeric の組み合わせです。

全ての組み込みの変換器は、実際に変換する前にフィールドのデータの文字エンコーディングを UTF-8 に変換します。そのデータの文字エンコーディングを UTF-8 に変換出来なかった場合は、変換には失敗しますが、データは変更されません。

このハッシュは [Object#freeze](../../../method/Object/i/freeze.md) されていないので、ユーザは自由に値を追加することが出来ます。

複数の変換器を持つ要素を追加するときは、値に名前の配列を指定する必要があります。この要素の値には他の複数の変換器を持つ要素の名前を指定することもできます。
