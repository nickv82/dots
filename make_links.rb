require 'fileutils'

def home
    "#{File.expand_path('~')}/"
end

def link_to_location link
    base = File.basename link
    to = base[0...(base.size-".symlink".size)]
    "#{home}.#{to}"
end

def backup file
    backdir = "#{home}/dotsback"
    Dir.mkdir backdir unless File.exist? backdir
    backfile = "#{backdir}/#{File.basename file}"
    FileUtils.mv(file,backfile)
    puts "== Backed up existing file to #{backfile}"
end

symlinks = Dir.glob("**/*.symlink")

symlinks.each do |from|
    to = link_to_location from
    puts "linking #{from} to #{to}"
    File.delete(to) if File.symlink?(to) 
    backup(to) if File.exist? to
    %x{ln -s #{home}dots/#{from} #{to}}
end