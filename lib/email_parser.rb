require "pry"

class EmailAddressParser
attr_accessor :emails

def initialize(email_addresses)
  @emails = email_addresses
end

def parse
    converted = @emails.gsub(/[, ]/, "*")
    string = converted.split("*")
    cleaned = string.reject{|element| element.empty?}
    counted = cleaned.count
    counted
end

end