#! /usr/bin/env ruby

require "cgi"

def die
  puts "Invalid argument #{ARGV}"
end

def open_url url
  if %x{uname} =~ /Linux/
    %x{gnome-open "#{url}"}
  else
    %x{open "#{url}" &}
  end
end

def search url, query=""
  query = "#{query} #{ARGV[1..-1].join " "}".strip
  url["#Q#"]=CGI::escape(query)
  open_url url
end

def google(prefix="",lucky=true)
  url = "http://www.google.com/search?q=#Q#" 
  url = url << "&btnI" if lucky
  search(url,prefix)
end

def fuzzy original, search
  tokens = original.split " "
  search = search.chars.find_all { |c| c != " " }.reverse
  score = 0
  tokens.reverse.each do |token|
    token.reverse.chars.each_with_index do |c,i|
      if c == search[0]
        search.shift
        score += 1 if i==token.size-1 
      else
        next
      end
    end
  end
  score += 50 if search.size == 0
  score
end

# not a hash because of ordering and ruby 1.8
actions = {
  # "ruby search"           => lambda { search("http://apidock.com/ruby/search?query=#Q#&commit=Search")},
  # "rails search"          => lambda { search("http://apidock.com/rails/search?query=#Q#&commit=Search")},
  "ruby search"           => lambda { google("apidock ruby")},
  "rails search"          => lambda { google("apidock rails")},
  "rspec search"          => lambda { search("https://www.relishapp.com/rspec/search?query=#Q#")},

  "google search"         => lambda { google("",false) },
  "google lucky search"   => lambda { google },

  "wikipedia search"      => lambda { search("http://en.wikipedia.org/wiki/Special:Search?search=#Q#&go=Go")},

  "stack overflow search" => lambda { search("http://stackoverflow.com/search?q=#Q#")},

  "rails guides"          => lambda { google("rails guide") },

  "url"                   => lambda { open_url ARGV[1] }
}

result = actions.max_by {|k,v| fuzzy k, ARGV[0] }
if result 
  result[1].call
else
  die
end
