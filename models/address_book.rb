# #8
require_relative 'entry'
require "csv"

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    # #9
    index = 0
    entries.each do |entry|
      # #10
      if name < entry.name
        break
      end
      index += 1
    end
    # #11
    entries.insert(index, Entry.new(name, phone_number, email))
  end

  def import_from_csv(file_name)
    # Implementation goes here
  end
end