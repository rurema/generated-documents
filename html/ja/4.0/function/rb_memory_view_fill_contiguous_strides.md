# rb_memory_view_fill_contiguous_strides

### void rb_memory_view_fill_contiguous_strides(const ssize_t ndim, const ssize_t item_size, const ssize_t *const shape, const bool row_major_p, ssize_t *const strides)

`shape` を持った与えられた要素サイズの contiguous 配列のストライド（バイト単位）で `strides` を埋めます。
