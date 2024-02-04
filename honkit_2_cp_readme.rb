#!/usr/bin/env ruby

require 'fileutils'

FileUtils.cp("README.md", "ja/README.md")
FileUtils.cp("README.md", "en/README.md")

puts "successfully."
