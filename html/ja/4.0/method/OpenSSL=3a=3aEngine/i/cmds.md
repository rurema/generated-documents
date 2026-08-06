# OpenSSL::Engine#cmds

### def cmds -> [[String, String, String]]

その engine がサポートしているコマンドの一覧を配列で返します。

配列の各要素は

```text
[コマンド名、コマンドの説明、コマンドのフラグ]
```

という3つの文字列の配列です。

- **SEE** [OpenSSL::Engine#ctrl_cmd](../../../method/OpenSSL=3a=3aEngine/i/ctrl_cmd.md)
