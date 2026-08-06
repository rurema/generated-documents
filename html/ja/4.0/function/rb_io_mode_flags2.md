# rb_io_mode_flags2

### static int rb_io_mode_flags2(int mode)

[man:open(2)] のようなモード指定modeをruby内部のモードフラグに変換します。

modeは、O_RDONLY, O_WRONLY, O_RDWRのいずれかで対応する以下の値のいずれかを返します。

  - FMODE_READABLE,
  - FMODE_WRITABLE,
  - FMODE_READWRITE

FMODE_READWRITEは、FMODE_READABLEと
FMODE_WRITEABLEの論理和です。

Microsoft Windows などファイルにバイナリ／テキスト属性の区別があるプラットフォームでは、modeにO_BINARYの論理和が指定されていれば、戻り値にはFMODE_BINMODEの論理和が指定されます。
