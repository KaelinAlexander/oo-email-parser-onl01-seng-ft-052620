require "pry"

class EmailAddressParser
attr_accessor :email_list
email_list = []

def initialize
  @email_list << self.new
end

def self.parse
    converted = self.(/[," "]/, "*")
    string = converted.split("*")
    binding.pry
    cleaned = string.reject{|element| element.empty?}
    counted = cleaned.count
    counted
end

end