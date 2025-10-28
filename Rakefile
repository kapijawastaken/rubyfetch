task :default do
  os = `uname -a`
  
  # Linux
  if os.include?("Linux")
    
    # Android
    if os.include?("Android")
      puts "Creating dirs..."
      `mkdir ~/.local/share/rubyfetch`
      `mkdir ~/.local/bin`
      puts "done"
      print "Copying rubyfetch..."
      `cp ./src/rubyfetch_android.rb ~/.local/share/rubyfetch/`
      puts "done"
      print "Moving rubyfetch..."
      `mv ~/.local/share/rubyfetch/rubyfetch_android.rb ~/.local/bin/rubyfetch`
      puts "done"
      print "Copying logos..."
      `cp -r ./src/logos ~/.local/share/rubyfetch/`
      puts "done"
   
    # Linux
    else
      
      # x86_64 and glibc
      if os.include?("x86_64") && `ldd --version`.include?("GNU libc") || `ldd --version`.include?("GLIBC")
        puts "Creating dirs..."
        `mkdir ~/.local/share/rubyfetch`
        `mkdir ~/.local/bin`
        puts "done"
        print "Copying rubyfetch..."
        `cp ./src/rubyfetch_linux.rb ~/.local/share/rubyfetch/`
        puts "done"
        print "Modifying rubyfetch..."
        File.write(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb"), File.read(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb")).sub("$HOME", ENV["HOME"]))
        puts "done"
        print "Moving rubyfetch..."
        `mv ~/.local/share/rubyfetch/rubyfetch_linux.rb ~/.local/bin/rubyfetch`
        puts "done"
        print "Copying ruby executable..."
        `cp ./src/ruby_linux_x86_64_glibc ~/.local/share/rubyfetch/`
        puts "done"
        print "Copying logos..."
        `cp -r ./src/logos ~/.local/share/rubyfetch/`
        puts "done"
      end
      
      # aarch64 and glibc
      if os.include?("aarch64") && `ldd --version`.include?("GNU libc") || `ldd --version`.include?("GLIBC")
        puts "Creating dirs..."
        `mkdir ~/.local/share/rubyfetch`
        `mkdir ~/.local/bin`
        puts "done"
        print "Copying rubyfetch..."
        `cp ./src/rubyfetch_linux.rb ~/.local/share/rubyfetch/`
        puts "done"
        print "Modifying rubyfetch..."
        File.write(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb"), File.read(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb")).sub("x86_64", "arm64"))
        File.write(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb"), File.read(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb")).sub("$HOME", ENV["HOME"]))
        puts "done"
        print "Moving rubyfetch..."
        `mv ~/.local/share/rubyfetch/rubyfetch_linux.rb ~/.local/bin/rubyfetch`
        puts "done"
        print "Copying ruby executable..."
        `cp ./src/ruby_linux_arm64_glibc ~/.local/share/rubyfetch/`
        puts "done"
        print "Copying logos..."
        `cp -r ./src/logos ~/.local/share/rubyfetch/`
        puts "done"
      end

      # x86_64 and musl
      if os.include?("x86_64") && `ldd --version`.include?("musl")
        puts "Creating dirs..."
        `mkdir ~/.local/share/rubyfetch`
        `mkdir ~/.local/bin`
        puts "done"
        print "Copying rubyfetch..."
        `cp ./src/rubyfetch_linux.rb ~/.local/share/rubyfetch/`
        puts "done"
        print "Modifying rubyfetch..."
        File.write(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb"), File.read(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb")).sub("glibc", "musl"))
        File.write(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb"), File.read(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb")).sub("$HOME", ENV["HOME"]))
        puts "done"
        print "Moving rubyfetch..."
        `mv ~/.local/share/rubyfetch/rubyfetch_linux.rb ~/.local/bin/rubyfetch`
        puts "done"
        print "Copying ruby executable..."
        `cp ./src/ruby_linux_x86_64_musl ~/.local/share/rubyfetch/`
        puts "done"
        print "Copying logos..."
        `cp -r ./src/logos ~/.local/share/rubyfetch/`
        puts "done"
      end

      # aarch64 and musl
      if os.include?("aarch64") && `ldd --version`.include?("musl")
        puts "Creating dirs..."
        `mkdir ~/.local/share/rubyfetch`
        `mkdir ~/.local/bin`
        puts "done"
        print "Copying rubyfetch..."
        `cp ./src/rubyfetch_linux.rb ~/.local/share/rubyfetch/`
        puts "done"
        print "Modifying rubyfetch..."
        File.write(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb"), File.read(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb")).sub("x86_64", "arm64").sub("glibc", "musl"))
        File.write(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb"), File.read(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb")).sub("$HOME", ENV["HOME"]))
        File.write(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb"), File.read(File.expand_path("~/.local/share/rubyfetch/rubyfetch_linux.rb")).sub("glibc", "musl"))
        puts "done"
        print "Moving rubyfetch..."
        `mv ~/.local/share/rubyfetch/rubyfetch_linux.rb ~/.local/bin/rubyfetch`
        puts "done"
        print "Copying ruby executable..."
        `cp ./src/ruby_linux_arm64_glibc ~/.local/share/rubyfetch/`
        puts "done"
        print "Copying logos..."
        `cp -r ./src/logos ~/.local/share/rubyfetch/`
        puts "done"
      end
   end
  end

  # BSD
    if os.include?("BSD")
      puts "Creating dirs..."
      `mkdir ~/.local/share/rubyfetch`
      `mkdir ~/.local/bin`
      puts "done"
      print "Copying rubyfetch..."
      `cp ./src/rubyfetch_bsd.rb ~/.local/share/rubyfetch/`
      puts "done"
      print "Moving rubyfetch..."
      `mv ~/.local/share/rubyfetch/rubyfetch_bsd.rb ~/.local/bin/rubyfetch`
      puts "done"
      print "Copying logos..."
      `cp -r ./src/logos ~/.local/share/rubyfetch/`
      puts "done"
    end

  # macOS
  if os.include?("Darwin")
    puts "Creating dirs..."
    `mkdir ~/.local/share/rubyfetch`
    `mkdir ~/.local/bin`
    puts "done"
    print "Copying rubyfetch..."
    `cp ./src/rubyfetch_macos.rb ~/.local/share/rubyfetch/`
    puts "done"
    print "Moving rubyfetch..."
    `mv ~/.local/share/rubyfetch/rubyfetch_macos.rb ~/.local/bin/rubyfetch`
    puts "done"
    print "Copying logos..."
    `cp -r ./src/logos ~/.local/share/rubyfetch/`
    puts "done"
  end

end
