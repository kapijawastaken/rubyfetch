#!/Library/Application\ Support/rubyfetch/ruby_macos_x86_64
# vars
logos = "/Library/Application\ Support/rubyfetch/logos/"
user = `whoami`.strip+"@"+`hostname`.strip+"\n--------------------"
kernel = `uname -r`
shell = ENV["SHELL"].gsub(/^.+\//, "")
# distro
distro = `sw_vers -productName`.strip+" "+`sw_vers -productVersion`
# uptime
boot_time = `sysctl -n kern.boottime`.match(/sec = (\d+)/)[1].to_i
seconds = Time.now.to_i - boot_time
years = seconds / 31536000
days = (seconds % 31536000) / 86400
hours = (seconds % 86400) / 3600
minutes = (seconds % 3600) / 60
secs = seconds % 60

parts = []

parts << "#{years} #{years == 1 ? 'year' : 'years'}" if years > 0
parts << "#{days} #{days == 1 ? 'day' : 'days'}" if days > 0
parts << "#{hours} #{hours == 1 ? 'hour' : 'hours'}" if hours > 0
parts << "#{minutes} #{minutes == 1 ? 'min' : 'mins'}" if minutes > 0
parts << "#{secs} #{secs == 1 ? 'sec' : 'secs'}" if secs > 0

uptime = parts.empty? ? "0 secs" : parts.join(" ")
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

# ascii art
  puts "\e[1m"+user
  puts "\e[1mdistro\e[37m "+distro
  puts "\e[1mkernel\e[37m "+kernel
  puts "\e[1mshell\e[37m "+shell
  puts "\e[1muptime\e[37m "+uptime
  puts "\e[1mmemory\e[37m "+memory
  ascii = File.read("#{logos}macos")
  puts ascii
