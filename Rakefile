task :default do
  puts "Please select an OS as described in the README."
end

task :linux_x86_64_glibc do
  puts "Creating dir..."
  `mkdir /usr/local/share/rubyfetch`
  puts "done"
  print "Copying rubyfetch..."
  `cp ./src/rubyfetch_linux.rb /usr/local/share/rubyfetch/`
  puts "done"
  print "Moving rubyfetch..."
  `mv /usr/local/share/rubyfetch/rubyfetch_linux.rb /usr/local/bin/rubyfetch`
  puts "done"
  print "Copying ruby executable..."
  `cp ./src/ruby_linux_x86_64_glibc /usr/local/share/rubyfetch/`
  puts "done"
  print "Copying logos..."
  `cp -r ./src/logos /usr/local/share/rubyfetch/`
  puts "done"
end

task :linux_x86_64_musl do
  puts "Creating dir..."
  `mkdir /usr/local/share/rubyfetch`
  puts "done"
  print "Copying rubyfetch..."
  `cp ./src/rubyfetch_linux.rb /usr/local/share/rubyfetch/`
  puts "done"
  print "Modifying rubyfetch..."
  File.write("/usr/local/share/rubyfetch/rubyfetch_linux.rb", File.read("/usr/local/share/rubyfetch/rubyfetch_linux.rb").sub("glibc", "musl"))
  puts "done"
  print "Moving rubyfetch..."
  `mv /usr/local/share/rubyfetch/rubyfetch_linux.rb /usr/local/bin/rubyfetch`
  puts "done"
  print "Copying ruby executable..."
  `cp ./src/ruby_linux_x86_64_musl /usr/local/share/rubyfetch/`
  puts "done"
  print "Copying logos..."
  `cp -r ./src/logos /usr/local/share/rubyfetch/`
  puts "done"
end

task :linux_arm64_glibc do
  puts "Creating dir..."
  `mkdir /usr/local/share/rubyfetch`
  puts "done"
  print "Copying rubyfetch..."
  `cp ./src/rubyfetch_linux.rb /usr/local/share/rubyfetch/`
  puts "done"
  print "Modifying rubyfetch..."
  File.write("/usr/local/share/rubyfetch/rubyfetch_linux.rb", File.read("/usr/local/share/rubyfetch/rubyfetch_linux.rb").sub("x86_64", "arm64"))
  puts "done"
  print "Moving rubyfetch..."
  `mv /usr/local/share/rubyfetch/rubyfetch_linux.rb /usr/local/bin/rubyfetch`
  puts "done"
  print "Copying ruby executable..."
  `cp ./src/ruby_linux_arm64_glibc /usr/local/share/rubyfetch/`
  puts "done"
  print "Copying logos..."
  `cp -r ./src/logos /usr/local/share/rubyfetch/`
  puts "done"
end

task :linux_arm64_musl do
  puts "Creating dir..."
  `mkdir /usr/local/share/rubyfetch`
  puts "done"
  print "Copying rubyfetch..."
  `cp ./src/rubyfetch_linux.rb /usr/local/share/rubyfetch/`
  puts "done"
  print "Modifying rubyfetch..."
  File.write("/usr/local/share/rubyfetch/rubyfetch_linux.rb", File.read("/usr/local/share/rubyfetch/rubyfetch_linux.rb").sub("x86_64", "arm64").sub("glibc", "musl"))
  puts "done"
  print "Moving rubyfetch..."
  `mv /usr/local/share/rubyfetch/rubyfetch_linux.rb /usr/local/bin/rubyfetch`
  puts "done"
  print "Copying ruby executable..."
  `cp ./src/ruby_linux_arm64_glibc /usr/local/share/rubyfetch/`
  puts "done"
  print "Copying logos..."
  `cp -r ./src/logos /usr/local/share/rubyfetch/`
  puts "done"
end

task :freebsd do
  puts "Creating dir..."
  `mkdir /usr/local/share/rubyfetch`
  puts "done"
  print "Copying rubyfetch..."
  `cp ./src/rubyfetch_bsd.rb /usr/local/share/rubyfetch/`
  puts "done"
  print "Moving rubyfetch..."
  `mv /usr/local/share/rubyfetch/rubyfetch_bsd.rb /usr/local/bin/rubyfetch`
  puts "done"
  print "Copying logos..."
  `cp -r ./src/logos /usr/local/share/rubyfetch/`
  puts "done"
end

task :netbsd do
  puts "Creating dir..."
  `mkdir /usr/local/share/rubyfetch`
  puts "done"
  print "Copying rubyfetch..."
  `cp ./src/rubyfetch_bsd.rb /usr/local/share/rubyfetch/`
  puts "done"
  print "Moving rubyfetch..."
  `mv /usr/local/share/rubyfetch/rubyfetch_bsd.rb /usr/local/bin/rubyfetch`
  puts "done"
  print "Copying logos..."
  `cp -r ./src/logos /usr/local/share/rubyfetch/`
  puts "done"
end

task :openbsd do
  puts "Creating dir..."
  `mkdir /usr/local/share/rubyfetch`
  puts "done"
  print "Copying rubyfetch..."
  `cp ./src/rubyfetch_bsd.rb /usr/local/share/rubyfetch/`
  puts "done"
  print "Moving rubyfetch..."
  `mv /usr/local/share/rubyfetch/rubyfetch_bsd.rb /usr/local/bin/rubyfetch`
  puts "done"
  print "Copying logos..."
  `cp -r ./src/logos /usr/local/share/rubyfetch/`
  puts "done"
end

task :openindiana do
  puts "Creating dir..."
  `mkdir /usr/local/share/rubyfetch`
  puts "done"
  print "Copying rubyfetch..."
  `cp ./src/rubyfetch_openindiana.rb /usr/local/share/rubyfetch/`
  puts "done"
  print "Moving rubyfetch..."
  `mv /usr/local/share/rubyfetch/rubyfetch_openindiana.rb /usr/local/bin/rubyfetch`
  puts "done"
  print "Copying logos..."
  `cp -r ./src/logos /usr/local/share/rubyfetch/`
  puts "done"
end

task :macos_x86_64 do
  puts "Creating dir..."
  `mkdir /usr/local/share/rubyfetch`
  puts "done"
  print "Copying rubyfetch..."
  `cp ./src/rubyfetch_macos.rb /usr/local/share/rubyfetch/`
  puts "done"
  print "Moving rubyfetch..."
  `mv /usr/local/share/rubyfetch/rubyfetch_macos.rb /usr/local/bin/rubyfetch`
  puts "done"
  print "Copying ruby executable..."
  `cp ./src/ruby_macos_x86_64 /usr/local/share/rubyfetch/`
  puts "done"
  print "Copying logos..."
  `cp -r ./src/logos /usr/local/share/rubyfetch/`
  puts "done"
end

task :windows_x86_64 do

end

task :uninstall do

end
