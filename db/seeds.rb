# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

CSV.foreach('db/All Results.csv', headers: true) do |row|
  Result.create(row.to_hash)
end

CSV.foreach('db/Stats.csv', headers: true) do |row|
  Stat.create(row.to_hash)
end