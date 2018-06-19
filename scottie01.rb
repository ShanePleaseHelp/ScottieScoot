#!/usr/bin/env ruby
require 'fileutils'

puts "###Scottie Creator has Started###"
puts
puts "Updating System"

system sudo apt-get update

puts
puts "Installing fbi"

system sudo apt-get install fbi

puts
Puts "Installing Remote.it"

system sudo apt-get install weavedconnectd

	Dir.mkdir 'scottie'
	
	FileUtils.copy(/slideshow.sh, /home/pi/scottie/slideshow.sh)
	
	Dir.chdir('/home/pi/scottie')

puts
puts "Make sure there are atleast 2 picture files in website folder"
puts
puts "What website folder to download pictuers from?"

webfolder = gets.chomp
art = File.open("file.tmp", "a")
art << webfolder
art.puts
art << "bash /home/pi/scottie/slidehow.sh"
art.close

FileUtils.mv("file.tmp", "getart.sh")

system sudo chmod +x getart.sh
system sudo chmod +x slideshow.sh

RC = File.open ("/home/pi/.bashrc",'a')
RC << bashrc.tmp
RC.close


