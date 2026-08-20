# ENV.dup

### def ENV.dup -> ()

[TypeError](../../../class/TypeError.md)を発生させます。

Ruby 3.0 までは Object.new と同様の ENV とは無関係の有用ではないオブジェクトを返していたため、Ruby 3.1 からは例外が発生するようになりました。
詳細は[ENV.clone](../../../method/ENV/s/clone.md)を参照してください。

- **SEE** [ENV.clone](../../../method/ENV/s/clone.md)
