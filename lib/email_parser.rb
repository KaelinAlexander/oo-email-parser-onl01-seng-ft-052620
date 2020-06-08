require "pry"

class EmailAddressParser
attr_accessor :email_list
email_list = []

def parse
    @email_list << self.new
    converted = @email_list.(/[," "]/, "*")
    string = converted.split("*")
    binding.pry
    cleaned = string.reject{|element| element.empty?}
    counted = cleaned.count
    counted
end

end