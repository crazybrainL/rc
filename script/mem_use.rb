#!/usr/bin/env ruby

trap('INT'){puts; exit}

loop do
    printf "%.2fM\n",`ps -Ao rss`.lines.drop(1).map(&:to_i).inject(&:+)/1024.0
    break unless ARGV.first
    sleep(1)
end
