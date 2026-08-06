# Gem::DependencyInstaller::DEFAULT_OPTIONS

### const DEFAULT_OPTIONS -> Hash

自身を初期化する際に使用するデフォルトのオプションです。

```text
:env_shebang         => false,
:domain              => :both, # HACK dup
:force               => false,
:format_executable   => false, # HACK dup
:ignore_dependencies => false,
:security_policy     => nil, # HACK NoSecurity requires OpenSSL.  AlmostNo? Low?
:wrappers            => true
```
