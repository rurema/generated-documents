# Rinda::TupleEntry#expires

### def expires -> Time

タプルの期限切れの時刻を返します。

有効期限を無限に指定した場合、この時刻は Time.at(2**31-1)、つまり
Tue Jan 19 03:14:07 GMT Standard Time 2038 を返します。

- **SEE** [Rinda::TupleEntry#expires=](../../../method/Rinda=3a=3aTupleEntry/i/expires=3d.md)
