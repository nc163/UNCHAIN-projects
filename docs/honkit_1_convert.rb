#!/usr/bin/env ruby

require 'fileutils'

source_dir = './docs'

def git_mv_with_directory_check(new_file)
    # 移動先のディレクトリパスを取得
    new_dir = File.dirname(new_file)
  
    # ディレクトリが存在しない場合は作成
    FileUtils.mkdir_p(new_dir) unless File.directory?(new_dir)
  
  end
  

# docs/ASTAR-SocialFi/ja/section-0/lesson-1_チェーンの特徴とアプリの概要を理解しよう.md
# honkitは
# ja/ASTAR-SocialFi/section-0/lesson-1_チェーンの特徴とアプリの概要を理解しよう.md
def move_files(source)
    Dir.glob(File.join(source, '**', '*')).each do |file|
        next if File.directory?(file)

        # file e.g) docs/ASTAR-SocialFi/ja/section-0/lesson-1_チェーンの特徴とアプリの概要を理解しよう.md
        match = file.match(/\/([a-z]{2})\//)
        # match = file.match(/\/({2})\//)
        if match
            language = match[1]
            new_file = "#{file.sub("#{language}/", '')}"
            new_file = new_file.sub('./docs/', "./#{language}/")
            git_mv_with_directory_check new_file

            puts "#{file} -> #{new_file}"
            system("git", "mv", file, new_file)
            # FileUtils.mkdir_p(File.dirname(new_file))
            # FileUtils.cp(file, new_file)
            
        else
            puts "assert! file: #{file}"
            assert(false)
        end
    end
end

move_files(source_dir)

puts "successfully."
