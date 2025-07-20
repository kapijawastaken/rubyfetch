# vars
logos = "/usr/local/share/rubyfetch/logos/"
user = `whoami`.strip+"@"+`hostname`.strip+"\n--------------------"
kernel = `uname -r`
shell = ENV["SHELL"].gsub(/^.+\//, "")
# distro
#=begin
distro = File.read("/etc/os-release").gsub(/^(?!.*PRETTY_NAME=).*/, "").strip.gsub("PRETTY_NAME=", "").gsub("\"", "")
#=end
# uptime
up = `uptime`.strip.gsub(/^.*up/, "").strip.gsub(/\s\s.*/, "").gsub(/,/, "").gsub(":", " hours ").gsub(/^0\shours/, "").gsub(" 1 hours", " 1 hour").gsub("min", "").strip.gsub(" 0", " ")+" mins"
uptime = up.gsub("01", "1").gsub("02", "2").gsub("03", "3").gsub("04", "4").gsub("05", "5").gsub("06", "6").gsub("07", "7").gsub("08", "8").gsub("09", "9").gsub(" 1 mins", " 1 min").gsub(" 1 days", "1 day").gsub("00 mins", "0 mins")
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

# the big if statement

if distro.include?("FreeBSD")
  puts "\e[1m\e[31m"+user
  puts "\e[1m\e[31mdistro\e[0m "+distro
  puts "\e[1m\e[31mkernel\e[0m "+kernel
  puts "\e[1m\e[31mshell\e[0m "+shell
  puts "\e[1m\e[31muptime\e[0m "+uptime
  puts "\e[1m\e[31mmemory\e[0m "+memory
  ascii = File.read("#{logos}freebsd")
  puts ascii

elsif distro.include?("NetBSD")
  puts "\e[1m\e[31m"+user
  puts "\e[1m\e[31mdistro\e[0m "+distro
  puts "\e[1m\e[31mkernel\e[0m "+kernel
  puts "\e[1m\e[31mshell\e[0m "+shell
  puts "\e[1m\e[31muptime\e[0m "+uptime
  puts "\e[1m\e[31mmemory\e[0m "+memory
  ascii = File.read("#{logos}netbsd")
  puts ascii

elsif distro.include?("OpenBSD")
  puts "\e[1m\e[33m"+user
  puts "\e[1m\e[33mdistro\e[0m "+distro
  puts "\e[1m\e[33mkernel\e[0m "+kernel
  puts "\e[1m\e[33mshell\e[0m "+shell
  puts "\e[1m\e[33muptime\e[0m "+uptime
  puts "\e[1m\e[33mmemory\e[0m "+memory
  ascii = File.read("#{logos}openbsd")
  puts ascii

else
  puts "\e[1m\e[31m"+user
  puts "\e[1m\e[31mdistro\e[0m "+distro
  puts "\e[1m\e[31mkernel\e[0m "+kernel
  puts "\e[1m\e[31mshell\e[0m "+shell
  puts "\e[1m\e[31muptime\e[0m "+uptime
  puts "\e[1m\e[31mmemory\e[0m "+memory
  ascii = File.read("#{logos}bsd")
  puts ascii


end
