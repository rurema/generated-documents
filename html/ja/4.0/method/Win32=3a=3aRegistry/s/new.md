# Win32::Registry.new

### def Win32::Registry.new(key, subkey, desired = KEY_READ, opt = REG_OPTION_RESERVED)
### def Win32::Registry.new(key, subkey, desired = KEY_READ, opt = REG_OPTION_RESERVED) {|reg| ... }
### def Win32::Registry.open(key, subkey, desired = KEY_READ, opt = REG_OPTION_RESERVED)
### def Win32::Registry.open(key, subkey, desired = KEY_READ, opt = REG_OPTION_RESERVED) {|reg| ... }
@todo

レジストリキー key 下のキー subkey を開き、開いたキーを表す Win32::Registry オブジェクトを返します。
key は親のキーを Win32::Registry オブジェクトで指定します。
親のキーには定義済キー HKEY_* を使用できます (⇒[Win32::Registry::Constants](../../../class/Win32=3a=3aRegistry=3a=3aConstants.md))

desired はアクセスマスクです。opt はキーのオプションです。
詳細は以下の MSDN Library を参照してください。

- Registry Key Security and Access Rights: <http://msdn.microsoft.com/library/en-us/sysinfo/base/registry_key_security_and_access_rights.asp>

ブロックが与えられると、キーは自動的に閉じられます。
