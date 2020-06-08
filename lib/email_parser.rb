require "pry"

class EmailAddressParser
attr_accessor :emails
emails = []

def initialize(email_addresses)
  @emails << email_addresses
end

def parse
    converted = @emails.(/[," "]/, "*")
    string = converted.split("*")
    binding.pry
    cleaned = string.reject{|element| element.empty?}
    counted = cleaned.count
    counted
end

end