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

    file = File.new("/Users/austinbrown/.profile", 'a')
    file.puts('# The following are from my dotfiles repo installation')
    file.puts('source ~/.dotfiles/bashrc')
    file.puts('source ~/.dotfiles/z.sh')
    file.puts('source ~/.dotfiles/profile')

    puts "Now you need to open up your iterm profiles and make Solarized the default :)"
end
