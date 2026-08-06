# class Gem::SourceInfoCache < Object

個々の Gem パッケージのインデックス情報のコピーを保存するためのクラスです。

キャッシュの保存場所として以下の二つが存在します。

- **システムキャッシュ**:
  ファイルに対する書き込み権限や作成権限がある場合はこちらを使用します。
- **ユーザーキャッシュ**:
  システムキャッシュが使用できない場合に使用します。

使用するキャッシュを選択すると、全ての操作で選択されたキャッシュを使用します。
また、このクラスは動的にキャッシュの種類を切り替えません。

キャッシュデータはキーが取得元の URI で値が [Gem::SourceInfoCacheEntry](../class/Gem=3a=3aSourceInfoCacheEntry.md) のインスタンスであるハッシュです。

## Class Methods

- [cache](../method/Gem=3a=3aSourceInfoCache/s/cache.md)
- [cache_data](../method/Gem=3a=3aSourceInfoCache/s/cache_data.md)
- [latest_system_cache_file](../method/Gem=3a=3aSourceInfoCache/s/latest_system_cache_file.md)
- [latest_user_cache_file](../method/Gem=3a=3aSourceInfoCache/s/latest_user_cache_file.md)
- [reset](../method/Gem=3a=3aSourceInfoCache/s/reset.md)
- [search](../method/Gem=3a=3aSourceInfoCache/s/search.md)
- [search_with_source](../method/Gem=3a=3aSourceInfoCache/s/search_with_source.md)
- [system_cache_file](../method/Gem=3a=3aSourceInfoCache/s/system_cache_file.md)
- [user_cache_file](../method/Gem=3a=3aSourceInfoCache/s/user_cache_file.md)

## Instance Methods

- [cache_data](../method/Gem=3a=3aSourceInfoCache/i/cache_data.md)
- [cache_file](../method/Gem=3a=3aSourceInfoCache/i/cache_file.md)
- [flush](../method/Gem=3a=3aSourceInfoCache/i/flush.md)
- [latest_cache_data](../method/Gem=3a=3aSourceInfoCache/i/latest_cache_data.md)
- [latest_cache_file](../method/Gem=3a=3aSourceInfoCache/i/latest_cache_file.md)
- [latest_system_cache_file](../method/Gem=3a=3aSourceInfoCache/i/latest_system_cache_file.md)
- [latest_user_cache_file](../method/Gem=3a=3aSourceInfoCache/i/latest_user_cache_file.md)
- [read_all_cache_data](../method/Gem=3a=3aSourceInfoCache/i/read_all_cache_data.md)
- [read_cache_data](../method/Gem=3a=3aSourceInfoCache/i/read_cache_data.md)
- [refresh](../method/Gem=3a=3aSourceInfoCache/i/refresh.md)
- [reset_cache_data](../method/Gem=3a=3aSourceInfoCache/i/reset_cache_data.md)
- [reset_cache_file](../method/Gem=3a=3aSourceInfoCache/i/reset_cache_file.md)
- [reset_cache_for](../method/Gem=3a=3aSourceInfoCache/i/reset_cache_for.md)
- [search](../method/Gem=3a=3aSourceInfoCache/i/search.md)
- [search_with_source](../method/Gem=3a=3aSourceInfoCache/i/search_with_source.md)
- [set_cache_data](../method/Gem=3a=3aSourceInfoCache/i/set_cache_data.md)
- [system_cache_file](../method/Gem=3a=3aSourceInfoCache/i/system_cache_file.md)
- [try_file](../method/Gem=3a=3aSourceInfoCache/i/try_file.md)
- [update](../method/Gem=3a=3aSourceInfoCache/i/update.md)
- [user_cache_file](../method/Gem=3a=3aSourceInfoCache/i/user_cache_file.md)
- [write_cache](../method/Gem=3a=3aSourceInfoCache/i/write_cache.md)
