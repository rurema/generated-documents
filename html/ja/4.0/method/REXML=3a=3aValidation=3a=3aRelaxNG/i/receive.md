# REXML::Validation::RelaxNG#receive

### def receive(event) -> ()
{: since=""}

パーサのイベント `event` を受け取り、[REXML::Validation::Validator#validate](../../../method/REXML=3a=3aValidation=3a=3aValidator/i/validate.md) で検証します。

バリデータを [REXML::Parsers::UltraLightParser#add_listener](../../../method/REXML=3a=3aParsers=3a=3aUltraLightParser/i/add_listener.md) などで登録したパーサが、イベントが発生するたびに呼び出します。

- **param** `event` -- パーサのイベント
- **raise** `REXML::Validation::ValidationException` -- 文書がスキーマに合わないときに発生します
