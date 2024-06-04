names=safe_ln
visibility=public
kind=added
source_location=refm/api/src/rake/core_ext:275

--- safe_ln(*args)

安全にリンクを作成します。

リンクの作成に失敗した場合はファイルをコピーします。

@param args [[m:FileUtils.#cp]], [[m:FileUtils.#ln]] に渡す引数を指定します。

@see [[m:FileUtils.#cp]], [[m:FileUtils.#ln]]

