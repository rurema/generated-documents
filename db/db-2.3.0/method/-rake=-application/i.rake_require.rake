names=rake_require
visibility=public
kind=defined
source_location=/tmp/claude-1000/-home-debian-rurema/3717a77b-67d6-4a40-b15e-a41ca141ab34/scratchpad/frozen.xqkPhh/src/refm/api/src/rake/Rake__Application

--- rake_require(file_name, paths = $LOAD_PATH, loaded = $") -> bool

[[m:Kernel#require]] に似ていますが、*.rb ファイルではなく *.rake ファイルを探索します。

@param file_name ロードするファイル名を指定します。

@param paths ロードパスを指定します。

@param loaded ロード済みのファイルリストを指定します。

@raise LoadError 指定されたファイルが見つからなかった場合に発生します。

