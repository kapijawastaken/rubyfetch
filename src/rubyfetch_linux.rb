#!/usr/local/share/rubyfetch/ruby_linux_x86_64_glibc
# vars
logos = "/usr/local/share/rubyfetch/logos/"
user = `whoami`.strip+"@"+`hostname`.strip+"\n--------------------"
kernel = `uname -r`
shell = ENV["SHELL"].gsub(/^.+\//, "")
# distro
#=begin
if `uname -a`.include?("Android")
  distro = "Android"
else
  distro = File.read("/etc/os-release").gsub(/^(?!.*PRETTY_NAME=).*/, "").strip.gsub("PRETTY_NAME=", "").gsub("\"", "")
end
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
if distro.include?("Rhino")
  puts "\e[1m\e[35m"+user
  puts "\e[1m\e[35mdistro\e[0m "+distro
  puts "\e[1m\e[35mkernel\e[0m "+kernel
  puts "\e[1m\e[35mshell\e[0m "+shell
  puts "\e[1m\e[35muptime\e[0m "+uptime
  puts "\e[1m\e[35mmemory\e[0m "+memory
  ascii = File.read("#{logos}rhino")
  puts ascii

elsif distro.include?("Arch")
  puts "\e[1m\e[36m"+user
  puts "\e[1m\e[36mdistro\e[0m "+distro
  puts "\e[1m\e[36mkernel\e[0m "+kernel
  puts "\e[1m\e[36mshell\e[0m "+shell
  puts "\e[1m\e[36muptime\e[0m "+uptime
  puts "\e[1m\e[36mmemory\e[0m "+memory
  ascii = File.read("#{logos}arch")
  puts ascii

elsif distro.include?("Manjaro")
  puts "\e[1m\e[32m"+user
  puts "\e[1m\e[32mdistro\e[0m "+distro
  puts "\e[1m\e[32mkernel\e[0m "+kernel
  puts "\e[1m\e[32mshell\e[0m "+shell
  puts "\e[1m\e[32muptime\e[0m "+uptime
  puts "\e[1m\e[32mmemory\e[0m "+memory 
  ascii = File.read("#{logos}manjaro")
  puts ascii

elsif distro.include?("Alpine")
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[34mdistro\e[0m "+distro
  puts "\e[1m\e[34mkernel\e[0m "+kernel
  puts "\e[1m\e[34mshell\e[0m "+shell
  puts "\e[1m\e[34muptime\e[0m "+uptime
  puts "\e[1m\e[34mmemory\e[0m "+memory
  ascii = File.read("#{logos}alpine")
  puts ascii

elsif distro.include?("Debian")
  puts "\e[1m\e[31m"+user
  puts "\e[1m\e[31mdistro\e[0m "+distro
  puts "\e[1m\e[31mkernel\e[0m "+kernel
  puts "\e[1m\e[31mshell\e[0m "+shell
  puts "\e[1m\e[31muptime\e[0m "+uptime
  puts "\e[1m\e[31mmemory\e[0m "+memory
  ascii = File.read("#{logos}debian")
  puts ascii

elsif distro.include?("Mint")
  puts "\e[1m\e[32m"+user
  puts "\e[1m\e[32mdistro\e[0m "+distro
  puts "\e[1m\e[32mkernel\e[0m "+kernel
  puts "\e[1m\e[32mshell\e[0m "+shell
  puts "\e[1m\e[32muptime\e[0m "+uptime
  puts "\e[1m\e[32mmemory\e[0m "+memory
  ascii = File.read("#{logos}mint")
  puts ascii

elsif distro.include?("Gentoo")
  puts "\e[1m\e[35m"+user
  puts "\e[1m\e[35mdistro\e[0m "+distro
  puts "\e[1m\e[35mkernel\e[0m "+kernel
  puts "\e[1m\e[35mshell\e[0m "+shell
  puts "\e[1m\e[35muptime\e[0m "+uptime
  puts "\e[1m\e[35mmemory\e[0m "+memory
  ascii = File.read("#{logos}gentoo")
  puts ascii

elsif distro.include?("Slackware")
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[34mdistro\e[0m "+distro
  puts "\e[1m\e[34mkernel\e[0m "+kernel
  puts "\e[1m\e[34mshell\e[0m "+shell
  puts "\e[1m\e[34muptime\e[0m "+uptime
  puts "\e[1m\e[34mmemory\e[0m "+memory
  ascii = File.read("#{logos}slackware")
  puts ascii

elsif distro.include?("NixOS")
  puts "\e[1m\e[36m"+user
  puts "\e[1m\e[36mdistro\e[0m "+distro
  puts "\e[1m\e[36mkernel\e[0m "+kernel
  puts "\e[1m\e[36mshell\e[0m "+shell
  puts "\e[1m\e[36muptime\e[0m "+uptime
  puts "\e[1m\e[36mmemory\e[0m "+memory
  ascii = File.read("#{logos}nixos")
  puts ascii

elsif distro.include?("Tumbleweed")
  puts "\e[1m\e[32m"+user
  puts "\e[1m\e[32mdistro\e[0m "+distro
  puts "\e[1m\e[32mkernel\e[0m "+kernel
  puts "\e[1m\e[32mshell\e[0m "+shell
  puts "\e[1m\e[32muptime\e[0m "+uptime
  puts "\e[1m\e[32mmemory\e[0m "+memory
  ascii = File.read("#{logos}tumbleweed")
  puts ascii

elsif distro.include?("EndeavourOS")
  puts "\e[1m\e[35m"+user
  puts "\e[1m\e[35mdistro\e[0m "+distro
  puts "\e[1m\e[35mkernel\e[0m "+kernel
  puts "\e[1m\e[35mshell\e[0m "+shell
  puts "\e[1m\e[35muptime\e[0m "+uptime
  puts "\e[1m\e[35mmemory\e[0m "+memory
  ascii = File.read("#{logos}endeavouros")
  puts ascii

elsif distro.include?("Fedora")
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[34mdistro\e[0m "+distro
  puts "\e[1m\e[34mkernel\e[0m "+kernel
  puts "\e[1m\e[34mshell\e[0m "+shell
  puts "\e[1m\e[34muptime\e[0m "+uptime
  puts "\e[1m\e[34mmemory\e[0m "+memory
  ascii = File.read("#{logos}fedora")
  puts ascii

elsif distro.include?("Android")
  puts "\e[1m\e[32m"+user
  puts "\e[1m\e[32mdistro\e[0m "+distro
  puts "\e[1m\e[32mkernel\e[0m "+kernel
  puts "\e[1m\e[32mshell\e[0m "+shell
  puts "\e[1m\e[32muptime\e[0m "+uptime
  puts "\e[1m\e[32mmemory\e[0m "+memory 
  ascii = File.read("#{logos}android")
  puts ascii

=begin
elsif distro.include?("Haiku")
  puts "\e[1m\e[33m"+user
  puts "\e[1m\e[33mdistro\e[0m "+distro
  puts "\e[1m\e[33mkernel\e[0m "+kernel
  puts "\e[1m\e[31mshell\e[0m "+shell
  puts "\e[1m\e[31muptime\e[0m "+uptime
  puts "\e[1m\e[31mmemory\e[0m "+memory
  ascii = File.read("#{logos}haiku")
  puts ascii
=end

elsif distro.include?("Solus")
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[34mdistro\e[0m "+distro
  puts "\e[1m\e[34mkernel\e[0m "+kernel
  puts "\e[1m\e[34mshell\e[0m "+shell
  puts "\e[1m\e[34muptime\e[0m "+uptime
  puts "\e[1m\e[34mmemory\e[0m "+memory
  ascii = File.read("#{logos}solus")
  puts ascii

elsif distro.include?("Kubuntu")
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[34mdistro\e[0m "+distro
  puts "\e[1m\e[34mkernel\e[0m "+kernel
  puts "\e[1m\e[34mshell\e[0m "+shell
  puts "\e[1m\e[34muptime\e[0m "+uptime
  puts "\e[1m\e[34mmemory\e[0m "+memory
  ascii = File.read("#{logos}kubuntu")
  puts ascii

elsif distro.include?("Lubuntu")
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[34mdistro\e[0m "+distro
  puts "\e[1m\e[34mkernel\e[0m "+kernel
  puts "\e[1m\e[34mshell\e[0m "+shell
  puts "\e[1m\e[34muptime\e[0m "+uptime
  puts "\e[1m\e[34mmemory\e[0m "+memory
  ascii = File.read("#{logos}lubuntu")
  puts ascii

elsif distro.include?("Void")
  puts "\e[1m\e[32m"+user
  puts "\e[1m\e[32mdistro\e[0m "+distro
  puts "\e[1m\e[32mkernel\e[0m "+kernel
  puts "\e[1m\e[32mshell\e[0m "+shell
  puts "\e[1m\e[32muptime\e[0m "+uptime
  puts "\e[1m\e[32mmemory\e[0m "+memory 
  ascii = File.read("#{logos}void")
  puts ascii

elsif distro.include?("Mageia")
  puts "\e[1m\e[36m"+user
  puts "\e[1m\e[36mdistro\e[0m "+distro
  puts "\e[1m\e[36mkernel\e[0m "+kernel
  puts "\e[1m\e[36mshell\e[0m "+shell
  puts "\e[1m\e[36muptime\e[0m "+uptime
  puts "\e[1m\e[36mmemory\e[0m "+memory
  ascii = File.read("#{logos}mageia")
  puts ascii

elsif distro.include?("Artix")
  puts "\e[1m\e[36m"+user
  puts "\e[1m\e[36mdistro\e[0m "+distro
  puts "\e[1m\e[36mkernel\e[0m "+kernel
  puts "\e[1m\e[36mshell\e[0m "+shell
  puts "\e[1m\e[36muptime\e[0m "+uptime
  puts "\e[1m\e[36mmemory\e[0m "+memory
  ascii = File.read("#{logos}artix")
  puts ascii

elsif distro.include?("OpenMandriva")
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[34mdistro\e[0m "+distro
  puts "\e[1m\e[34mkernel\e[0m "+kernel
  puts "\e[1m\e[34mshell\e[0m "+shell
  puts "\e[1m\e[34muptime\e[0m "+uptime
  puts "\e[1m\e[34mmemory\e[0m "+memory
  ascii = File.read("#{logos}openmandriva")
  puts ascii

elsif distro.include?("Alma")
  puts "\e[1m\e[33m"+user
  puts "\e[1m\e[33mdistro\e[0m "+distro
  puts "\e[1m\e[33mkernel\e[0m "+kernel
  puts "\e[1m\e[31mshell\e[0m "+shell
  puts "\e[1m\e[31muptime\e[0m "+uptime
  puts "\e[1m\e[31mmemory\e[0m "+memory
  ascii = File.read("#{logos}alma")
  puts ascii

elsif distro.include?("Red Hat")
  puts "\e[1m\e[31m"+user
  puts "\e[1m\e[31mdistro\e[0m "+distro
  puts "\e[1m\e[31mkernel\e[0m "+kernel
  puts "\e[1m\e[31mshell\e[0m "+shell
  puts "\e[1m\e[31muptime\e[0m "+uptime
  puts "\e[1m\e[31mmemory\e[0m "+memory
  ascii = File.read("#{logos}rhel")
  puts ascii

elsif distro.include?("CentOS")
  puts "\e[1m\e[32m"+user
  puts "\e[1m\e[32mdistro\e[0m "+distro
  puts "\e[1m\e[32mkernel\e[0m "+kernel
  puts "\e[1m\e[32mshell\e[0m "+shell
  puts "\e[1m\e[32muptime\e[0m "+uptime
  puts "\e[1m\e[32mmemory\e[0m "+memory 
  ascii = File.read("#{logos}centos")
  puts ascii

elsif distro.include?("Ubuntu MATE")
  puts "\e[1m\e[32m"+user
  puts "\e[1m\e[32mdistro\e[0m "+distro
  puts "\e[1m\e[32mkernel\e[0m "+kernel
  puts "\e[1m\e[32mshell\e[0m "+shell
  puts "\e[1m\e[32muptime\e[0m "+uptime
  puts "\e[1m\e[32mmemory\e[0m "+memory 
  ascii = File.read("#{logos}ubuntu_mate")
  puts ascii

elsif distro.include?("KaOS")
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[34mdistro\e[0m "+distro
  puts "\e[1m\e[34mkernel\e[0m "+kernel
  puts "\e[1m\e[34mshell\e[0m "+shell
  puts "\e[1m\e[34muptime\e[0m "+uptime
  puts "\e[1m\e[34mmemory\e[0m "+memory
  ascii = File.read("#{logos}kaos")
  puts ascii

elsif distro.include?("PCLinuxOS")
  puts "\e[1m"+user
  puts "\e[1mdistro\e[0m "+distro
  puts "\e[1mkernel\e[0m "+kernel
  puts "\e[1mshell\e[0m "+shell
  puts "\e[1muptime\e[0m "+uptime
  puts "\e[1mmemory\e[0m "+memory
  ascii = File.read("#{logos}pclinuxos")
  puts ascii

elsif distro.include?("CachyOS")
  puts "\e[1m\e[36m"+user
  puts "\e[1m\e[36mdistro\e[0m "+distro
  puts "\e[1m\e[36mkernel\e[0m "+kernel
  puts "\e[1m\e[36mshell\e[0m "+shell
  puts "\e[1m\e[36muptime\e[0m "+uptime
  puts "\e[1m\e[36mmemory\e[0m "+memory
  ascii = File.read("#{logos}cachyos")
  puts ascii

elsif distro.include?("SteamOS")
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[34mdistro\e[0m "+distro
  puts "\e[1m\e[34mkernel\e[0m "+kernel
  puts "\e[1m\e[34mshell\e[0m "+shell
  puts "\e[1m\e[34muptime\e[0m "+uptime
  puts "\e[1m\e[34mmemory\e[0m "+memory
  ascii = File.read("#{logos}steamos")
  puts ascii

elsif distro.include?("Silverblue")
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[34mdistro\e[0m "+distro
  puts "\e[1m\e[34mkernel\e[0m "+kernel
  puts "\e[1m\e[34mshell\e[0m "+shell
  puts "\e[1m\e[34muptime\e[0m "+uptime
  puts "\e[1m\e[34mmemory\e[0m "+memory
  ascii = File.read("#{logos}silverblue")
  puts ascii

elsif distro.include?("Leap")
  puts "\e[1m\e[32m"+user
  puts "\e[1m\e[32mdistro\e[0m "+distro
  puts "\e[1m\e[32mkernel\e[0m "+kernel
  puts "\e[1m\e[32mshell\e[0m "+shell
  puts "\e[1m\e[32muptime\e[0m "+uptime
  puts "\e[1m\e[32mmemory\e[0m "+memory 
  ascii = File.read("#{logos}leap")
  puts ascii

elsif distro.include?("Nitrux")
  puts "\e[1m\e[34m"+user
  puts "\e[1m\e[34mdistro\e[0m "+distro
  puts "\e[1m\e[34mkernel\e[0m "+kernel
  puts "\e[1m\e[34mshell\e[0m "+shell
  puts "\e[1m\e[34muptime\e[0m "+uptime
  puts "\e[1m\e[34mmemory\e[0m "+memory
  ascii = File.read("#{logos}nitrux")
  puts ascii

elsif distro.include?("Guix")
  puts "\e[1m\e[33m"+user
  puts "\e[1m\e[33mdistro\e[0m "+distro
  puts "\e[1m\e[33mkernel\e[0m "+kernel
  puts "\e[1m\e[33mshell\e[0m "+shell
  puts "\e[1m\e[33muptime\e[0m "+uptime
  puts "\e[1m\e[33mmemory\e[0m "+memory
  ascii = File.read("#{logos}guix")
  puts ascii

elsif distro.include?("CRUX")
  puts "\e[1m\e[35m"+user
  puts "\e[1m\e[35mdistro\e[0m "+distro
  puts "\e[1m\e[35mkernel\e[0m "+kernel
  puts "\e[1m\e[35mshell\e[0m "+shell
  puts "\e[1m\e[35muptime\e[0m "+uptime
  puts "\e[1m\e[35mmemory\e[0m "+memory
  ascii = File.read("#{logos}crux")
  puts ascii

elsif distro.include?("KISS")
  puts "\e[1m\e[35m"+user
  puts "\e[1m\e[35mdistro\e[0m "+distro
  puts "\e[1m\e[35mkernel\e[0m "+kernel
  puts "\e[1m\e[35mshell\e[0m "+shell
  puts "\e[1m\e[35muptime\e[0m "+uptime
  puts "\e[1m\e[35mmemory\e[0m "+memory
  ascii = File.read("#{logos}kiss")
  puts ascii

elsif distro.include?("Archcraft")
  puts "\e[1m\e[36m"+user
  puts "\e[1m\e[36mdistro\e[0m "+distro
  puts "\e[1m\e[36mkernel\e[0m "+kernel
  puts "\e[1m\e[36mshell\e[0m "+shell
  puts "\e[1m\e[36muptime\e[0m "+uptime
  puts "\e[1m\e[36mmemory\e[0m "+memory
  ascii = File.read("#{logos}archcraft")
  puts ascii

elsif distro.include?("PikaOS")
  puts "\e[1m\e[33m"+user
  puts "\e[1m\e[33mdistro\e[0m "+distro
  puts "\e[1m\e[33mkernel\e[0m "+kernel
  puts "\e[1m\e[33mshell\e[0m "+shell
  puts "\e[1m\e[33muptime\e[0m "+uptime
  puts "\e[1m\e[33mmemory\e[0m "+memory
  ascii = File.read("#{logos}pikaos")
  puts ascii

elsif distro.include?("antiX")
  puts "\e[1m\e[31m"+user
  puts "\e[1m\e[31mdistro\e[0m "+distro
  puts "\e[1m\e[31mkernel\e[0m "+kernel
  puts "\e[1m\e[31mshell\e[0m "+shell
  puts "\e[1m\e[31muptime\e[0m "+uptime
  puts "\e[1m\e[31mmemory\e[0m "+memory
  ascii = File.read("#{logos}antix")
  puts ascii

elsif distro.include?("Devuan")
  puts "\e[1m\e[35m"+user
  puts "\e[1m\e[35mdistro\e[0m "+distro
  puts "\e[1m\e[35mkernel\e[0m "+kernel
  puts "\e[1m\e[35mshell\e[0m "+shell
  puts "\e[1m\e[35muptime\e[0m "+uptime
  puts "\e[1m\e[35mmemory\e[0m "+memory
  ascii = File.read("#{logos}devuan")
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
