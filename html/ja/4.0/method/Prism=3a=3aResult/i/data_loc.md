# Prism::Result#data_loc

### def data_loc -> Prism::Location | nil

ソースコード中に `__END__` 行が存在する場合、その行からファイル末尾までの範囲を表す [Prism::Location](../../../class/Prism=3a=3aLocation.md) を返します。存在しない場合は
nil を返します。

- **SEE** [Prism::ParseResult#data_loc](../../../method/Prism=3a=3aParseResult/i/data_loc.md)
