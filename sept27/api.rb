require('httparty');
require('json');
require('pp');



class ClassName
    toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
    parsed_Data = JSON.parse(toronto_wards_response.body)

    parsed_Data["objects"].each do |each_ward|
        puts each_ward["name"]
        puts "***************"
    end
end