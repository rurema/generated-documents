#!/usr/bin/env ruby

Dir.chdir(File.expand_path("../rurema-search", __dir__))
Process.exec("bundle", "exec", "bin/bitclust-indexer", *Dir.glob("../db/db-*"))
