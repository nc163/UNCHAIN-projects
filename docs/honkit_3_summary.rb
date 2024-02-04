#!/usr/bin/env ruby

# example https://honkit.netlify.app/pages
#
# # Summary
#
# * [Part I](part1/README.md)
#     * [Writing is nice](part1/writing.md)
#     * [HonKit is nice](part1/honkit.md)
# * [Part II](part2/README.md)
#     * [We love feedback](part2/feedback_please.md)
#     * [Better tools for authors](part2/better_tools.md)
#


require 'fileutils'

def make_summary(lang, dest)
    book_dir = "./#{lang}"
    summary_file_path = "./#{lang}/#{dest}"

    book_obj = {}
    Dir.glob(File.join(book_dir, '**', '*')).each do |file|
        next if File.directory?(file)
    
        product, section, lesson = "#{file.sub("#{book_dir}/", '')}".split(/\//)
        book_obj[product] ||= {}
        book_obj[product][section] ||= []
        book_obj[product][section] << lesson
    end
    # puts book_obj.inspect

    File.open(summary_file_path, 'w') do |summary|
        summary.puts "# Summary"
        summary.puts ""

        book_obj.each do |product, sections|    
            summary.puts "* [#{product}]"
            sections.each do |section, lessons|
                summary.puts "    * [#{section}]"
                lessons.each do |lesson|
                    summary.puts "        * [#{lesson}](#{product}/#{section}/#{lesson})"
                end
            end
        end
    end
    puts "successfully. #{summary_file_path}"
end

make_summary('ja', 'SUMMARY.md')
make_summary('en', 'SUMMARY.md')


puts "successfully."
