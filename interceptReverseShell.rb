require 'colorize'
require 'open-uri'

class Design

	def Ascii

		open("http://artii.herokuapp.com/make?text=ReverCept").read


	end

	def ColorInfo
		puts "===========[ Legend color ]==========="
		puts "Blue is informations".blue
		puts "Red is My username and ascii".red
		puts "Green is correctly response".green
		puts "======================================"


	end

	def Copy
		puts "================================[ Copyright ]================================"
		puts "Dev by Muham'RB".red
		puts "my github: https://github.com/EaqueSH".blue
		puts "My channel: https://www.youtube.com/channel/UC9ZVJjngK1Dr-U_lrBJI7ew?view_as=subscriber".blue
		puts "============================================================================="


	end




end

class Netcat

	attr_accessor :host, :port

	def initialize(hosting, ports)
		@host = hosting
		@port = ports
	end

	def intercept
		system("nc -v #{host} #{port}")
	end	



end

design = Design.new

puts design.Ascii.red
puts ""

puts design.ColorInfo
puts ""

puts design.Copy

print("HOST: ")
host = gets.chomp

print("PORT: ")
port = gets.chomp

netcat = Netcat.new(host, port)

puts netcat.intercept
