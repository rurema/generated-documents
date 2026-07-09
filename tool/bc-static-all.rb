#!/usr/bin/env ruby

require 'fileutils'
require_relative 'static_html'

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
