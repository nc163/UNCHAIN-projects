#!/usr/bin/env ruby




require 'fileutils'


def replace_in_file(file_path)
    text = File.read(file_path)
    
    # ](/public/images/XRPL-NFT-Maker/section-1/1_2_1.png)
    # /\]\(\/public\/images\/XRPL-NFT-Maker\/section-1\/1_2_1.png)
    # /\]\(\/public\/images\/([^\/]+)\/([^\/]+)\/([^)]+)\)/
    new_contents = text.gsub(/\]\(\/public\/images\/([^\/]+)\/([^\/]+)\/([^)]+)\)/, '](\3)')
    File.open(file_path, "w") {|file| file.puts new_contents}
  end

def process_markdown_files(dir)
    Dir.glob(File.join(dir, '**', '*.md')) do |file_path|
        replace_in_file(file_path)
        puts "successfully. #{file_path}"
    end
  end
  

process_markdown_files('ja')

puts "successfully."
