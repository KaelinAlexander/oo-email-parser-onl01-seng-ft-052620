require "pry"

class EmailAddressParser
attr_accessor :emails

def initialize(email_addresses)
  @emails = email_addresses
  binding.pry
end

def parse
    converted = @emails.(/[," "]/, "*")
    string = converted.split("*")
    cleaned = string.reject{|element| element.empty?}
    counted = cleaned.count
    counted
end

end