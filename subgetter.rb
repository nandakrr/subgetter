#Combining Subdomain Enumeration Tools for Personal Use by @nk1202 .
require 'socket'
require 'colorize'
begin
   domain = ARGV[0]
rescue
   puts "Usage: ruby subgetter.rb domain"
   exit
end
  puts "Censys Started..."
  #Get it from https://github.com/christophetd/censys-subdomain-finder
  puts "+--------------------------------Subdomains BY Censys--------------------------------------+"
  system("python censys_subdomain_finder.py #{domain}")
  puts "Censys Ended..."
  puts
  puts "Sublist3r Started..."
  #Get it from https://github.com/aboul3la/Sublist3r
  puts "+-------------------------------Subdomains BY Sublister------------------------------------+"
  system("python sublist3r.py -d #{domain}")
  puts "Sublist3r Ended..."
  puts  
  puts "Findomain Started..."
  #Get it from https://github.com/Edu4rdSHL/findomain
  puts "+--------------------------------Subdomains By Findomain-----------------------------------+"
  system("./findomain-linux -t #{domain}")
  puts "Findomain Ended..."
  puts
  puts "Amass Started..."
  #Get it from https://github.com/OWASP/Amass
  puts "+-------------------------------Subdomains BY Amass----------------------------------------+"
  system("amass enum -d #{domain}")
  puts "Amass Ended..."
  puts
  puts "Knockpy Started..."
  #Get it from https://github.com/guelfoweb/knock
  puts "+-------------------------------Subdomains by Knockpy--------------------------------------+"
  system("knockpy #{domain}")
  puts "Knockpy Ended..."
  puts
  puts "Subfinder Started..."
  #Get it from https://github.com/projectdiscovery/subfinder
  puts "+--------------------------------Subdomains By Subfinder-----------------------------------+"
  system("subfinder -d #{domain}")
  puts "Subfinder Ended..."  
  puts  
  puts "Aquatone-discover Started..."
  #Get it from https://github.com/michenriksen/aquatone
  puts "+---------------------------Subdomains By Aquatone-discover--------------------------------+"
  system("aquatone-discover --domain #{domain}")
  puts "Aquatone-discover Ended..."
  puts
  puts "Aquatone-takeover Started..."
  #Quick auto test for any subdomain takeover
  puts "+---------------------------Subdomains By Aquatone-takeover--------------------------------+"
  system("aquatone-takeover --domain #{domain}")
  puts "Aquatone-takeover Ended..."
