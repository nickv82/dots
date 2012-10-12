#!/usr/bin/env ruby

# apt-get install libio-socket-ssl-perl libnet-ssleay-perl sendemail
# or http://caspian.dotconf.net/menu/Software/SendEmail/

# mailto TO [SUBJECT] [options]


to,subject = *$*.reject { |t| t.start_with? "-" }
to = "nick.verlinde@gmail.com" if to == "me"

# get piped input
require 'fcntl'
raise "no body" unless STDIN.fcntl(Fcntl::F_GETFL, 0) == 0

piped_body = STDIN.read 

command = %Q{sendemail -f npiv.robot@gmail.com -t #{to} -s smtp.gmail.com:587 -o tls=yes -xu npiv.robot -xp gaffrobot}
command << %Q{ -u "#{subject}"} if subject
command << " -o message-content-type=html" if $*.grep /-html/

io = IO.popen(command,"w") { |o| o.write piped_body }

