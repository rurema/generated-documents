# ARGF.class#to_io

### def to_io -> IO
{: since=""}

ARGFが現在開いているファイルの[File](../../../class/File.md)、または[IO](../../../class/IO.md)オブジェクトを返します。

```ruby
p ARGF.to_io  # => #<File:glark.txt>
p ARGF.to_io  # => #<IO:<STDIN>>
```

- **SEE** [ARGF.class#file](../../../method/ARGF=2eclass/i/file.md), [ARGF.class#to_write_io](../../../method/ARGF=2eclass/i/to_write_io.md)
