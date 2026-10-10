# Gem::ConfigFile#cert_expiration_length_days

### def cert_expiration_length_days -> Integer
{: since="2.6.0"}

`gem cert` で証明書を作るときの有効期間(日数)を返します。

デフォルトは 365 日([Gem::ConfigFile::DEFAULT_CERT_EXPIRATION_LENGTH_DAYS](../../../method/Gem=3a=3aConfigFile/c/DEFAULT_CERT_EXPIRATION_LENGTH_DAYS.md))です。

```ruby title="例"
Gem.configuration.cert_expiration_length_days # => 365
```

- **SEE** [Gem::ConfigFile#cert_expiration_length_days=](../../../method/Gem=3a=3aConfigFile/i/cert_expiration_length_days=3d.md)
