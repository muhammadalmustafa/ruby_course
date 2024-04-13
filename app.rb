require 'sinatra'
require 'redcarpet'  # This is a Markdown to HTML converter

# Setup Redcarpet (Markdown parser)
markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

# Define routes for each chapter
get '/' do
  markdown.render(File.read('README.md'))
end

(1..10).each do |chapter_number|
  formatted_number = format('%02d', chapter_number)
  get "/chapter#{formatted_number}" do
  	puts "chapter formatted number #{formatted_number}"
    file_path = "chapters/chapter_0#{chapter_number}.md"
    markdown.render(File.read(file_path))
  end
end
