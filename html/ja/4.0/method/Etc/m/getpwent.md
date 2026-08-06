# Etc?.getpwent

### module_function def getpwent -> Etc::Passwd | nil

/etc/passwd から読み込んだエントリを一つ返します。

最初の呼び出しでは、先頭のエントリを返します。それ以降の呼び出しでは、呼び出す度に次のエントリを順に返します。ファイルの終端に達すると nil を返します。

処理が終了したときは [Etc?.endpwent](../../../method/Etc/m/endpwent.md) を呼び出すようにしてください。

- **SEE** [man:getpwent(3)]
