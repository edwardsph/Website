include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::Rendering
require 'erb'
require 'html5small/nanoc'
require 'nanoc/data_sources/bibtex_data_source'

def render_publication id
  render '/_publication.*', :publication => @items['/publications/' + id]
end

def authors_of publication
  authors = publication[:author].to_a.map{ |a| fullname_of a }
  if authors.length === 2
    "#{authors.first} and #{authors.last}"
  elsif authors.length <= 5
    authors.join(', ').sub(/, ([^,]+)$/, ', and \1')
  else
    authors.first(3).join(', ') + ", et al."
  end
end

def fullname_of author
  id = "#{author.first[0]}. #{author.prefix} #{author.last} #{author.suffix}".strip.gsub(/\s+/, ' ')
end
