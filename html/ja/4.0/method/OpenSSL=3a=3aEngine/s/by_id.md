# OpenSSL::Engine.by_id

### def OpenSSL::Engine.by_id(id) -> OpenSSL::Engine

id で指定した engine をロードします。

[OpenSSL::Engine.load](../../../method/OpenSSL=3a=3aEngine/s/load.md) ではコンパイル時に決められた engine しか読み込めませんが、これは動的なロードが可能です。

- **param** `id` -- engine の名前(文字列)
- **raise** `OpenSSL::Engine::EngineError` -- ロードが失敗した場合に発生します。
