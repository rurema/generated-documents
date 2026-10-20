# RB_NOGVL_OFFLOAD_SAFE

### int RB_NOGVL_OFFLOAD_SAFE

[rb_nogvl](../function/rb_nogvl.md) の `flags` に指定するフラグです。
`func` をバックグラウンドのスレッドやワーカープールにオフロードしても安全であることを示します。
つまり `func` を [Fiber](../class/Fiber.md) スケジューラの `blocking_operation_wait` フックで実行できます。
`func` がスレッドローカルストレージやスレッド固有のデータ操作 (たとえば [Mutex](../class/Mutex.md) の unlock) に依存するときは、別のスレッドでは動作が異なったり失敗したりするため、指定しないでください。
