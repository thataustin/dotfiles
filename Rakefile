require 'fileutils'

task :default do |t| 
    dest = "/Users/austinbrown/.dotfiles"
    FileUtils.mkdir_p(dest) unless File.exists?(dest)
    dest += "/"
    FileUtils.cp_r(File.dirname(__FILE__) + "/bashrc/.", dest)
    Dir.chdir(dest)

    `
        git clone https://github.com/thataustin/maximum-awesome.git
        cd maximum-awesome
        rake
    `

    ["{#dest}.profile"].each do |file_name|
      File.new(file_name, APPEND).puts('for f in ~/.bash_profile_*; do source $f; done') if File.exists?(file_name)
    end

    puts "Now you need to open up your iterm profiles and make Solarized the default :)"
end
