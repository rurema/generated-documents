# Win32::Registry.create

### def Win32::Registry.create(key, subkey, desired = KEY_ALL_ACCESS, opt = REG_OPTION_RESERVED)
### def Win32::Registry.create(key, subkey, desired = KEY_ALL_ACCESS, opt = REG_OPTION_RESERVED) {|reg| ... }
@todo

レジストリキー key 下にキー subkey を作成し、開いたキーを表す Win32::Registry オブジェクトを返します。
key は親のキーを Win32::Registry オブジェクトで指定します。
親のキーには定義済キー HKEY_* を使用できます (⇒[Win32::Registry::Constants](../../../class/Win32=3a=3aRegistry=3a=3aConstants.md))

サブキーが既に存在していればキーはただ開かれ、[Win32::Registry#created?](../../../method/Win32=3a=3aRegistry/i/created=3f.md)
メソッドが false を返します。

ブロックが与えられると、キーは自動的に閉じられます。
