# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

plates = Plate.create!([{
  :name => "Today's Special",
  :description => "Stacked Beef Enchiladas with house-made masa tortillas with red chili mole, cotjia cheese, cilantro, peruano beans",
  :price => 12.00,
  :chef => "Kathy"
},{
  :name => "Soup and Salad",
  :description => "Salmon chowder with applewood smoked bacon and Yukon Gold potatoes, served with oyster crackers, and greens with muscatel vinaigrette, dressing on the side",
  :price => 10.00,
  :chef => "Rainbow",
  :gluten_free => true
},{
  :name => "Full-meal Sandwich Box",
  :description => "Lunch includes sandwich, Kettle chips, pasta salad, house-made chocolate chip cookie",
  :price => 11.00,
  :chef => "Kathy"
},{
  :name => "Nora's Cobb Salad",
  :description => "Organic greens, smoked turkey breast, Rogue Creamery blue cheese, toasted hazelnuts, applewood smoked bacon, avocado,  house-pickled green tomatoes, creme fraiche dijon vinaigrette on the side, wedge of baguette",
  :price => 12.00,
  :chef => "Kathy"
},{
  :name => "Burmese Pork Curry",
  :description => "Savory curry pork with seared vegetables on a bed of jasmine rice",
  :price => 12.00,
  :chef => "Justin"
  
}])