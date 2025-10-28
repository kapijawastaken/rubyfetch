#!/usr/local/bin/ruby
# vars
logos = File.expand_path("~/.local/share/rubyfetch/logos/")+"/"
user = `whoami`.strip+"@"+`hostname`.strip+"\n--------------------"
kernel = `uname -r`
shell = ENV["SHELL"].gsub(/^.+\//, "")
distro = File.read("/etc/os-release").gsub(/^(?!.*PRETTY_NAME=).*/, "").strip.gsub("PRETTY_NAME=", "").gsub("\"", "")

# uptime math
boot_time = `sysctl -n kern.boottime`.match(/sec = (\d+)/)[1].to_i
seconds = Time.now.to_i - boot_time
years = seconds / 31536000
days = (seconds % 31536000) / 86400
hours = (seconds % 86400) / 3600
minutes = (seconds % 3600) / 60

# uptime array
time = []
time << "#{years} #{years == 1 ? 'year' : 'years'}" if years > 0
time << "#{days} #{days == 1 ? 'day' : 'days'}" if days > 0
time << "#{hours} #{hours == 1 ? 'hour' : 'hours'}" if hours > 0
time << "#{minutes} #{minutes == 1 ? 'min' : 'mins'}" if minutes > 0
uptime = time.empty? ? "0 mins" : parts.join(" ")

# memory (it works so dont complain)
memory = `free`.gsub(/^(Swap:).+/, "").gsub(/^\s.+/, "").strip.gsub("Mem:", "").strip.gsub(/^(\s*\d+\s+\d+).*/, '\1')
total = mem.gsub(/(?<=\s)\d+/, "").strip.to_f / (1024**2)
used = mem.gsub(/^\d+/, "").strip.to_f / (1024**2)
total = total.to_s.strip.gsub(/(?<=^\d\.\d{2}).*/, "").to_f.round(1).to_s
used = used.to_s.strip.gsub(/(?<=^\d\.\d{2}).*/, "").to_f.round(1).to_s
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

  if distro.include?("DragonflyBSD")
  puts "\e[1m\e[31m"+user
  puts "\e[1m\e[31mdistro\e[0m "+distro
  puts "\e[1m\e[31mkernel\e[0m "+kernel
  puts "\e[1m\e[31mshell\e[0m "+shell
  puts "\e[1m\e[31muptime\e[0m "+uptime
  puts "\e[1m\e[31mmemory\e[0m "+memory
  ascii = File.read("#{logos}dragonfly")
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
