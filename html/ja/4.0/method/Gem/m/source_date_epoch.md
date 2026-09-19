# Gem?.source_date_epoch

### module_function def source_date_epoch -> Time
{: since="2.7.0"}

ビルドを再現可能にするための基準時刻を返します。

環境変数 `SOURCE_DATE_EPOCH` が設定されていればその値を、設定されていなければ 1980-01-02 00:00:00 UTC を返します。

- **return** -- ビルドを再現可能にするための基準時刻です。

```ruby title="例(環境変数 SOURCE_DATE_EPOCH が未設定の場合)"
p Gem.source_date_epoch # => 1980-01-02 00:00:00 UTC
```
