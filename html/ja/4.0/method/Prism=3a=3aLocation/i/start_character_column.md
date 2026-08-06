# Prism::Location#start_character_column

### def start_character_column -> Integer

範囲の開始位置の、行頭からの文字単位の桁位置(0 origin)を返します。
マルチバイト文字を含む行では [Prism::Location#start_column](../../../method/Prism=3a=3aLocation/i/start_column.md) と異なる値になります。
