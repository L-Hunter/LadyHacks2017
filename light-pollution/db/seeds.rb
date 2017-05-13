# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Attorney.create(name: "Teresa Carr Deni", status: "Judge", district: "Philadelphia")

trialsPath = "#{Rails.root}/data.json"
trials = JSON.parse(File.read(trialsPath))

trials.each do |trial|
	Trial.create!(trial['data'])
end

