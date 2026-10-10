# Gem::ConfigFile#ipv4_fallback_enabled

### def ipv4_fallback_enabled -> bool

IPv6 で接続できない場合や接続が遅い場合に、IPv4 にフォールバックするかどうかを返します。実験的な機能です。

デフォルトは偽([Gem::ConfigFile::DEFAULT_IPV4_FALLBACK_ENABLED](../../../method/Gem=3a=3aConfigFile/c/DEFAULT_IPV4_FALLBACK_ENABLED.md))ですが、環境変数 `IPV4_FALLBACK_ENABLED` が `true` の場合は真になります。

- **SEE** [Gem::ConfigFile#ipv4_fallback_enabled=](../../../method/Gem=3a=3aConfigFile/i/ipv4_fallback_enabled=3d.md)
