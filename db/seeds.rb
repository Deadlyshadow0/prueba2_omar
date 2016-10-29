# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create([{name: 'Rodrigo', email: 'ro@hotmail.com'},{name: 'Omar', email: 'omar@hotmail.com'}])
category = Category.create(:name => 'C1')
inventory = Inventory.create(:serial => 'serial', :size => 5, :description => 'd', :category => category)
Work.create(description: 'trabajo facil1', user: User.first, :inventory => inventory)
Work.create(description: 'trabajo facil2', user: User.last, :inventory => inventory)
Work.create(description: 'trabajo facil3', user: User.last, :inventory => inventory)