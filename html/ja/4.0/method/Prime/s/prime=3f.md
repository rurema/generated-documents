# Prime.prime?

### def Prime.prime?(value, generator = Prime::Generator23.new) -> bool

Prime.instance.prime? と同じです。

- **param** `value` -- 素数かどうかチェックする任意の整数を指定します。

- **param** `generator` -- 素数生成器のインスタンスを指定します。

- **return** -- 素数かどうかを返します。
        引数 value に負の数を指定した場合は常に false を返します。


- **SEE** [Prime#prime?](../../../method/Prime/i/prime=3f.md)
