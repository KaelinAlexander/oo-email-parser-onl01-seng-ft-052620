require "pry"

class EmailAddressParser
attr_accessor :email_list
email_list = []

def parse
    converted = Self.new.gsub(/[," "]/, "*")
    string = converted.split("*")
    binding.pry
    cleaned = string.reject{|element| element.empty?}
    counted = cleaned.count
    counted
end

end