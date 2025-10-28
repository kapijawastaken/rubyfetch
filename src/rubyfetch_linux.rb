#!$HOME/.local/share/rubyfetch/ruby_linux_x86_64_glibc
# vars
logos = File.expand_path("~/.local/share/rubyfetch/logos/")+"/"
user = `whoami`.strip+"@"+`hostname`.strip+"\n--------------------"
kernel = `uname -r`
shell = ENV["SHELL"].gsub(/^.+\//, "")
distro = File.read("/etc/os-release").gsub(/^(?!.*PRETTY_NAME=).*/, "").strip.gsub("PRETTY_NAME=", "").gsub("\"", "")

# uptime math
seconds = File.read("/proc/uptime").gsub(/\..+/, "").strip.to_i
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
uptime = time.empty? ? "0 mins" : time.join(" ")

# memory (it works so dont complain)
memory = `free`.gsub(/^(Swap:).+/, "").gsub(/^\s.+/, "").strip.gsub("Mem:", "").strip.gsub(/^(\s*\d+\s+\d+).*/, '\1')
total = memory.gsub(/(?<=\s)\d+/, "").strip.to_f / (1024**2)
used = memory.gsub(/^\d+/, "").strip.to_f / (1024**2)
total = total.to_s.strip.gsub(/(?<=^\d\.\d{2}).*/, "").to_f.round(1).to_s
used = used.to_s.strip.gsub(/(?<=^\d\.\d{2}).*/, "").to_f.round(1).to_s
memory = used+" GB / "+total+" GB"

# reset formatting when exiting
at_exit do
  puts "\e[0m"
end

# arrays for all colours
purple_distros = ["Rhino", "Gentoo", "EndeavourOS", "CRUX", "KISS", "Devuan"]
cyan_distros = ["Arch", "NixOS", "Mageia", "Artix", "CachyOS", "Archcraft"]
green_distros = ["Manjaro", "Mint", "Tumbleweed", "Void", "CentOS", "Ubuntu MATE", "Leap"]
blue_distros = ["Alpine", "Slackware", "Fedora", "Solus", "Kubuntu", "Lubuntu", "OpenMandriva", "KaOS", "SteamOS", "Silverblue", "Nitrux"]
red_distros = ["Debian", "Red Hat", "antiX"]
yellow_distros = ["Guix", "PikaOS"]

# variables for the arrays
purple_distro = purple_distros.find { |d| distro.match?(/\b#{d}\b/i) }
cyan_distro = cyan_distros.find { |d| distro.match?(/\b#{d}\b/i) }
green_distro = green_distros.find { |d| distro.match?(/\b#{d}\b/i) }
blue_distro = blue_distros.find { |d| distro.match?(/\b#{d}\b/i) }
red_distro = red_distros.find { |d| distro.match?(/\b#{d}\b/i) }
yellow_distro = yellow_distros.find { |d| distro.match?(/\b#{d}\b/i) }

# the legendary big if statement
if purple_distro
  puts "\e[1m\e[35m"+user
  puts "\e[1m\e[35mdistro\e[0m "+distro
  puts "\e[1m\e[35mkernel\e[0m "+kernel
  puts "\e[1m\e[35mshell\e[0m "+shell
  puts "\e[1m\e[35muptime\e[0m "+uptime
  puts "\e[1m\e[35mmemory\e[0m "+memory
  ascii = File.read(logos+purple_distro.downcase)
  puts ascii

elsif cyan_distro
  puts "\e[1m\e[36m"+user
  puts "\e[1m\e[36mdistro\e[0m "+distro
  puts "\e[1m\e[36mkernel\e[0m "+kernel
  puts "\e[1m\e[36mshell\e[0m "+shell
  puts "\e[1m\e[36muptime\e[0m "+uptime
  puts "\e[1m\e[36mmemory\e[0m "+memory
  ascii = File.read(logos+cyan_distro.downcase)
  puts ascii

elsif green_distro
  puts "\e[1m\e[32m"+user
  puts "\e[1m\e[32mdistro\e[0m "+distro
  puts "\e[1m\e[32mkernel\e[0m "+kernel
  puts "\e[1m\e[32mshell\e[0m "+shell
  puts "\e[1m\e[32muptime\e[0m "+uptime
  puts "\e[1m\e[32mmemory\e[0m "+memory 
  ascii = File.read(logos+green_distro.downcase)
  puts ascii

elsif blue_distro
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[34mdistro\e[0m "+distro
  puts "\e[1m\e[34mkernel\e[0m "+kernel
  puts "\e[1m\e[34mshell\e[0m "+shell
  puts "\e[1m\e[34muptime\e[0m "+uptime
  puts "\e[1m\e[34mmemory\e[0m "+memory
  ascii = File.read(logos+blue_distro.downcase)
  puts ascii

elsif red_distro
  puts "\e[1m\e[31m"+user
  puts "\e[1m\e[31mdistro\e[0m "+distro
  puts "\e[1m\e[31mkernel\e[0m "+kernel
  puts "\e[1m\e[31mshell\e[0m "+shell
  puts "\e[1m\e[31muptime\e[0m "+uptime
  puts "\e[1m\e[31mmemory\e[0m "+memory
  ascii = File.read(logos+red_distro.downcase)
  puts ascii

elsif yellow_distro
  puts "\e[1m\e[33m"+user
  puts "\e[1m\e[33mdistro\e[0m "+distro
  puts "\e[1m\e[33mkernel\e[0m "+kernel
  puts "\e[1m\e[33mshell\e[0m "+shell
  puts "\e[1m\e[33muptime\e[0m "+uptime
  puts "\e[1m\e[33mmemory\e[0m "+memory
  ascii = File.read(logos+yellow_distro.downcase)
  puts ascii

elsif distro.include?("Alma")
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[33mdistro\e[0m "+distro
  puts "\e[1m\e[33mkernel\e[0m "+kernel
  puts "\e[1m\e[32mshell\e[0m "+shell
  puts "\e[1m\e[31muptime\e[0m "+uptime
  puts "\e[1m\e[31mmemory\e[0m "+memory
  ascii = File.read("#{logos}alma")
  puts ascii

else
  puts "\e[1m"+user
  puts "\e[1mdistro\e[0m "+distro
  puts "\e[1mkernel\e[0m "+kernel
  puts "\e[1mshell\e[0m "+shell
  puts "\e[1muptime\e[0m "+uptime
  puts "\e[1mmemory\e[0m "+memory
  ascii = File.read("#{logos}linux")
  puts ascii
end

