# library irb/ext/tracer

irb への入力を評価する時に tracer gem を使用してトレース出力を行う機能を提供するサブライブラリです。tracer は Ruby 3.1 で標準添付ライブラリから削除されたため、使用するには tracer gem のインストールが必要です。

conf.use_tracer か IRB.conf[:USE_TRACER] に true を設定する事で使用でき
ます。ただし、`Tracer.verbose?` は常に false で実行されます。
