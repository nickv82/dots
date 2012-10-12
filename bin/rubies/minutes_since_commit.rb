#! /usr/bin/env ruby

last_commit = (%x{git log --pretty=format:'%at' -1 2> /dev/null}).gsub(/^\* (.+)$/, '(\1) ');
seconds     = Time.now.to_f - last_commit.to_f;
minutes     = seconds.to_f / 60;
hours       = minutes.to_f / 60;
days        = hours.to_f / 24;

if not last_commit.empty?
  if minutes < 10
    puts "\u2248"
  elsif hours < 2
    puts "#{minutes.round}m" 
  elsif days < 1
    puts "#{hours.round}h" 
  else
    puts "#{days.round}d"
  end
end  
