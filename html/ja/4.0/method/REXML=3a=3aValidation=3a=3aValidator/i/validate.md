# REXML::Validation::Validator#validate

### def validate(event) -> ()
{: since=""}

パーサのイベント `event` が、スキーマから見て次に来てよいものであるかを検証します。

通常は [REXML::Validation::RelaxNG#receive](../../../method/REXML=3a=3aValidation=3a=3aRelaxNG/i/receive.md) を通じて呼ばれます。

- **param** `event` -- パーサのイベント
- **raise** `REXML::Validation::ValidationException` -- 文書がスキーマに合わないときに発生します
