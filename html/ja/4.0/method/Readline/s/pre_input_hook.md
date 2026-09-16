# Readline.pre_input_hook

### def Readline.pre_input_hook=(proc)
{: since="2.0.0"}
### def Readline.pre_input_hook -> Proc | nil
{: since="2.0.0"}

最初のプロンプトが表示された後、readline が入力文字の読み取りを開始する直前に呼び出す [Proc](../../../class/Proc.md) オブジェクト proc を指定・取得します。

`Readline.pre_input_hook=` は、呼び出す [Proc](../../../class/Proc.md) オブジェクト proc を指定します。詳細は GNU Readline の rl_pre_input_hook 変数を参照してください。

`Readline.pre_input_hook` は、指定されている [Proc](../../../class/Proc.md) オブジェクトを返します。デフォルトは `nil` です。

- **param** `proc` -- 呼び出す [Proc](../../../class/Proc.md) オブジェクトを指定します。

- **raise** `ArgumentError` -- proc が call メソッドを持たない場合に発生します。
- **raise** `NotImplementedError` -- サポートしていない環境で発生します。
