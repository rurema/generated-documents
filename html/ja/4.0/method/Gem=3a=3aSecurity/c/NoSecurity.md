# Gem::Security::NoSecurity

### const NoSecurity -> Gem::Security::Policy

セキュリティなしのポリシーです。

全ての検証を行いません。

```text
:verify_data      => false,
:verify_signer    => false,
:verify_chain     => false,
:verify_root      => false,
:only_trusted     => false,
:only_signed      => false
```
