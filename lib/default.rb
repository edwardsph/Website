include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::Rendering
require 'erb'
require 'html5small/nanoc'
require 'nanoc/data_sources/bibtex_data_source'

def render_publication id
  render '/_publication.*', :publication => @items['/publications/' + id]
end

def authors_of publication
  authors = publication[:author].to_a.map{ |a| abbreviated_name_of a }
  if authors.length === 2
    "#{authors.first} and #{authors.last}"
  elsif authors.length <= 5
    authors.join(', ').sub(/, ([^,]+)$/, ', and \1')
  else
    authors.first(3).join(', ') + ", et al."
  end
end

def fullname_of author
  id = "#{author.first} #{author.prefix} #{author.last} #{author.suffix}".strip.gsub(/\s+/, ' ')
end

def abbreviated_name_of author
  id = "#{author.first.gsub /[a-z]+/, '.'} #{author.prefix} #{author.last} #{author.suffix}".strip.gsub(/\s+/, ' ')
end

def all_authors
  @items.select{ |i| i.identifier =~ /^\/publications\/.+/ }.
         # map publications to list of authors
         flat_map{ |p| p[:author].to_a }.
         # sort authors by descending publication frequency and name
         group_by{ |a| fullname_of a }.map{ |k, v| [v[0], v.size] }.
         sort{ |a,b| [b[1], a[0].last] <=> [a[1], b[0].last] }.
         # obtain full names
         map { |a| fullname_of a[0] }
end
