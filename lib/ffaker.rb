module Faker
  VERSION = "1.9.1"

  require 'ffaker/utils/module_utils'

  extend ModuleUtils

 LETTERS = k('a'..'z')

  def self.numerify(number_string)
    number_string.gsub!(/#/) { rand(10).to_s }
    number_string
  end

  def self.letterify(letter_string)
    letter_string.gsub!(/\?/) { LETTERS.rand }
    letter_string
  end

  def self.bothify(string)
    letterify(numerify(string))
  end

  autoload :Address,       'ffaker/address'
  autoload :AddressDE,     'ffaker/address_de'
  autoload :Company,       'ffaker/company'
  autoload :Education,     'ffaker/education'
  autoload :Geolocation,   'ffaker/geolocation'
  autoload :HTMLIpsum,     'ffaker/html_ipsum'
  autoload :HipsterIpsum,  'ffaker/hipster_ipsum'
  autoload :Internet,      'ffaker/internet'
  autoload :Lorem,         'ffaker/lorem'
  autoload :LoremCN,       'ffaker/lorem_cn'
  autoload :Name,          'ffaker/name'
  autoload :NameCN,        'ffaker/name_cn'
  autoload :NameDE,        'ffaker/name_de'
  autoload :NameJA,        'ffaker/name_ja'
  autoload :NameRU,        'ffaker/name_ru'
  autoload :NameSN,        'ffaker/name_sn'
  autoload :PhoneNumber,   'ffaker/phone_number'
  autoload :PhoneNumberSN, 'ffaker/phone_number_sn'
  autoload :Product,       'ffaker/product'
  autoload :VERSION,       'ffaker/version'
end
