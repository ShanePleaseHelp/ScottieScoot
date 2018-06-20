#!/usr/bin/env ruby
require 'fileutils'

puts "###Scottie Creator has Started###"
puts
puts "Updating System....................."
puts

system("sudo apt-get -v update")

puts
puts "Installing fbi........................"
puts
system("sudo apt-get install fbi")

puts
puts "Installing Remote.it.........................."
puts
system("sudo apt-get install weavedconnectd")

	Dir.mkdir 'scottie'

system("mv -f -v slideshow.sh /home/pi/scottie")
system("mv -f -v file.tmp /home/pi/scottie")
	
	Dir.chdir('/home/pi/scottie')

puts
puts "Make sure there are atleast 2 picture files in website folder"
puts
puts
puts "What website folder to download pictuers from?"

webfolder = gets.chomp
art = File.open("file.tmp", "a")
art << webfolder
art.puts
art << "bash /home/pi/scottie/slidehow.sh"
art.close

FileUtils.mv("file.tmp", "getart.sh")

cmd = "chmod +x getart.sh"
cmd = "chmod +x slideshow.sh"

RC = File.open (".bashrc")
RC << bashrc.tmp
RC.close


