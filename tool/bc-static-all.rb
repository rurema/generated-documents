#!/usr/bin/env ruby

require 'fileutils'
require_relative 'vars'

def create_document(version)
  db = "#{DB_BASE}/db-#{version}"
  outputdir = "#{TMP_HTML_BASE}/#{version}"
  system("bundle",
         "exec",
         "bitclust",
         "--database=#{db}",
         "statichtml",
         "--outputdir=#{outputdir}",
         "--templatedir=#{TEMPLATE}",
         "--catalog=#{CATALOG}",
         "--fs-casesensitive",
         "--canonical-base-url=https://docs.ruby-lang.org/ja/latest/",
         "--edit-base-url=https://github.com/rurema/doctree/edit/master/",
         "--meta-robots-content=",
         "--tracking-id=UA-620926-3",
         "--quiet", chdir: DOC_BASE) or raise
  system("rsync", "-acvi", "--no-times", "--delete", outputdir, DOC_ROOT) or raise
  FileUtils.rm_rf outputdir
  puts "#{version} is done."
end

VERSIONS.reverse_each do |version|
  create_document(version)
end

Dir.chdir(DOC_ROOT) do
  # latest and master should be symlink
  %w[latest master].each do |name|
    FileUtils.rm_rf(name) if File.directory?(name)
  end
  system("ln", "-s", "-n", "-f", VERSIONS[-2], "latest")
  system("ln", "-s", "-n", "-f", VERSIONS[-1], "master")
end
