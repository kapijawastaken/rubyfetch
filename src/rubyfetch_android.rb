#!/usr/bin/ruby
# vars
logos = File.expand_path("~/.local/share/rubyfetch/logos/")+"/"
user = `whoami`.strip+"@"+`hostname`.strip+"\n--------------------"
kernel = `uname -r`
shell = ENV["SHELL"].gsub(/^.+\//, "")
distro = "Android"

# uptime
uptime = `uptime -p`.strip.gsub(",", "").sub(/^up /, "")
# ai slop (lets see if it works)
def pluralize(count, singular, plural = nil)
  plural ||= "#{singular}s"
  count == 1 ? "#{count} #{singular}" : "#{count} #{plural}"
end
parts = uptime.scan(/(\d+)\s+(year|month|week|day|hour|minute)/)
formatted_parts = parts.map do |count, unit|
  pluralize(count.to_i, unit)
end
uptime = formatted_parts.join(" ")
# memory (it works so dont complain)
mem = `free`.gsub(/^(Swap:).+/, "").gsub(/^\s.+/, "").strip.gsub("Mem:", "").strip.gsub(/^(\s*\d+\s+\d+).*/, '\1')
total = mem.gsub(/(?<=\s)\d+/, "").strip.to_f / (1024**2)
used = mem.gsub(/^\d+/, "").strip.to_f / (1024**2)
total2 = total.to_s.strip.gsub(/(?<=^\d\.\d{2}).*/, "").to_f.round(1).to_s
used2 = used.to_s.strip.gsub(/(?<=^\d\.\d{2}).*/, "").to_f.round(1).to_s
memory = used2+" GB / "+total2+" GB"

# reset formatting when exiting
at_exit do
  puts "\e[0m"
end

# the print
puts "\e[1m\e[32m"+user
puts "\e[1m\e[32mdistro\e[0m "+distro
puts "\e[1m\e[32mkernel\e[0m "+kernel
puts "\e[1m\e[32mshell\e[0m "+shell
puts "\e[1m\e[32muptime\e[0m "+uptime
puts "\e[1m\e[32mmemory\e[0m "+memory 
ascii = File.read("#{logos}android")
puts ascii
