task :default do
  puts "Please select an OS as described in the README."
end

task :linux_x86_64_glibc do

end

task :linux_x86_64_musl do

end

task :linux_arm64_glibc do

end

task :linux_arm64_musl do

end

task :freebsd_x86_64 do

end

task :freebsd_arm64 do

end

task :netbsd_x86_64 do

end

task :netbsd_arm64 do

end

task :openbsd_x86_64 do

end

task :openbsd_arm64 do

end

task :openindiana_x86_64 do

end

task :haiku_x86_64 do

end

task :macos_x86_64 do
  rubyfetch = File.read(File.expand_path("./src/rubyfetch_macos.rb")).gsub("_HOME_", ENV["HOME"])
  File.write(File.expand_path("./src/rubyfetch/rubyfetch_macos.rb", rubyfetch))
end

task :windows_x86_64 do

end
