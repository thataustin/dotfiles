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

    File.new("/Users/austinbrown/.profile", APPEND).puts('source ~/.dotfiles/bashrc')

    puts "Now you need to open up your iterm profiles and make Solarized the default :)"
end
