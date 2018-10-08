# frozen_string_literal: true

require 'csv'

csv_options = { col_sep: ',', headers: :first_row }
filepath    = 'db/guests.csv'

CSV.foreach(filepath, csv_options) do |row|
  puts "Guest.create!(email: '#{row['email']}', first_name: '#{row['first_name']}', last_name: '#{row['last_name']}', dear: '#{row['dear']}', greeting: '#{row['greeting']}', language: '#{row['language']}' )"
end
