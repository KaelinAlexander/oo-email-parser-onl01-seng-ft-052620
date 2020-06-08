require "pry"

class EmailAddressParser
attr_accessor :email_list
email_list = []

def initialize(email_addresses)
  self.new = 

def self.parse
    converted = self.new.(/[," "]/, "*")
    string = converted.split("*")
    binding.pry
    cleaned = string.reject{|element| element.empty?}
    counted = cleaned.count
    counted
end

end