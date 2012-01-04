# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

options = Option.create!([{
  :label => "Choose one for soup"
},{
  :label => "Sandwich on Dave’s Killer bread, multigrain, choose one"
},{
  :label => "Cheese, choose one"
},{
  :label => "Condiments, choose as many as you like"
}])

selections = Selection.create!([{
  :option => options[0],
  :name => "Delivered hot"
},{
  :option => options[0],
  :name => "Delivered cold, ready for the microwave"
},{
  :option => options[1],
  :name => "Smoked turkey breast"
},{
  :option => options[1],
  :name => "Roast beef sirloin"
},{
  :option => options[1],
  :name => "BLAT: Applewood smoked bacon, lettuce, avocado, pickled green tomato on toasted Dave’s bread"
},{
  :option => options[1],
  :name => "Vegetarian roasted vegetable"
},{
  :option => options[2],
  :name => "Tillamook cheddar"
},{
  :option => options[2],
  :name => "Tillamook jack"
},{
  :option => options[2],
  :name => "No cheese"
},{
  :option => options[3],
  :name => "Mayonnaise"
},{
  :option => options[3],
  :name => "Chipotle mayo"
},{
  :option => options[3],
  :name => "House-made whole-grain mustard"
},{
  :option => options[3],
  :name => "Butter"
},{
  :option => options[3],
  :name => "Lettuce"
},{
  :option => options[3],
  :name => "Pickles"
},{
  :option => options[3],
  :name => "Sliced red onion"
}])


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

plates[0].