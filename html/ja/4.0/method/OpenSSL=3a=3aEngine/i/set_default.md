# OpenSSL::Engine#set_default

### def set_default(flags) -> true

engine をデフォルトで利用するようにします。

flags は engine を openssl のどの機能に関してデフォルトにするかを指定します。

flags は以下の値の OR を取ります。
  - [OpenSSL::Engine::METHOD_CIPHERS](../../../method/OpenSSL=3a=3aEngine/c/METHOD_CIPHERS.md)
  - [OpenSSL::Engine::METHOD_DH](../../../method/OpenSSL=3a=3aEngine/c/METHOD_DH.md)
  - [OpenSSL::Engine::METHOD_DIGESTS](../../../method/OpenSSL=3a=3aEngine/c/METHOD_DIGESTS.md)
  - [OpenSSL::Engine::METHOD_DSA](../../../method/OpenSSL=3a=3aEngine/c/METHOD_DSA.md)
  - [OpenSSL::Engine::METHOD_RSA](../../../method/OpenSSL=3a=3aEngine/c/METHOD_RSA.md)
  - [OpenSSL::Engine::METHOD_RAND](../../../method/OpenSSL=3a=3aEngine/c/METHOD_RAND.md)
また、 [OpenSSL::Engine::METHOD_ALL](../../../method/OpenSSL=3a=3aEngine/c/METHOD_ALL.md) や
[OpenSSL::Engine::METHOD_NONE](../../../method/OpenSSL=3a=3aEngine/c/METHOD_NONE.md) が利用可能です。
