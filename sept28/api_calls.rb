require('httparty');

10.times do 
    puts HTTParty.get('http://setgetgo.com/randomword/get.php')
end