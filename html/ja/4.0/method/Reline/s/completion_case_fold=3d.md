# Reline.completion_case_fold=

### def Reline.completion_case_fold -> bool
{: since="2.7"}
### def Reline.completion_case_fold=(bool)
{: since="2.7"}

ユーザの入力を補完する際、大文字と小文字を同一視するかどうかを取得/設定します。`bool`
が真ならば同一視します。デフォルトは `nil` です。

inputrc の `set completion-ignore-case on` でも設定できます。

- **param** `bool` -- 大文字と小文字を同一視する(`true`)/しない(`false`)を指定します。
