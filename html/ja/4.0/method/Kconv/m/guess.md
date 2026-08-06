# Kconv?.guess

### module_function def guess(str) -> Encoding

文字列 str のエンコーディングを判定します。戻り値は
Kconv の定数です。

このモジュール関数で判定できるのは、
  - ISO-2022-JP ([Kconv::JIS](../../../method/Kconv/c/JIS.md))
  - Shift_JIS ([Kconv::SJIS](../../../method/Kconv/c/SJIS.md))
  - EUC-JP ([Kconv::EUC](../../../method/Kconv/c/EUC.md))
  - ASCII ([Kconv::ASCII](../../../method/Kconv/c/ASCII.md))
  - UTF-8 ([Kconv::UTF8](../../../method/Kconv/c/UTF8.md))
  - UTF-16BE ([Kconv::UTF16](../../../method/Kconv/c/UTF16.md))
  - 不明 ([Kconv::UNKNOWN](../../../method/Kconv/c/UNKNOWN.md))
  - 以上のどれでもない ([Kconv::BINARY](../../../method/Kconv/c/BINARY.md))
のいずれかです。

- **param** `str` -- エンコーディング判定対象の文字列
