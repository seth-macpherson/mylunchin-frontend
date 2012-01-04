# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

vars = Variation.create!([{
  :label => "Choose one for soup"
},{
  :label => "Sandwich on Dave’s Killer bread, multigrain, choose one"
},{
  :label => "Cheese, choose one"
},{
  :label => "Condiments, choose as many as you like"
},{
  :label => "Salad dressing"
}])

selections = Selection.create!([{
  :variation_id => vars[0].id,
  :name => "Delivered hot"
},{
  :variation_id => vars[0].id,
  :name => "Delivered cold, ready for the microwave"
},{
  :variation_id => vars[1].id,
  :name => "Smoked turkey breast"
},{
  :variation_id => vars[1].id,
  :name => "Roast beef sirloin"
},{
  :variation_id => vars[1].id,
  :name => "BLAT: Applewood smoked bacon, lettuce, avocado, pickled green tomato on toasted Dave’s bread"
},{
  :variation_id => vars[1].id,
  :name => "Vegetarian roasted vegetable"
},{
  :variation_id => vars[2].id,
  :name => "Tillamook cheddar"
},{
  :variation_id => vars[2].id,
  :name => "Tillamook jack"
},{
  :variation_id => vars[2].id,
  :name => "No cheese"
},{
  :variation_id => vars[3].id,
  :name => "Mayonnaise"
},{
  :variation_id => vars[3].id,
  :name => "Chipotle mayo"
},{
  :variation_id => vars[3].id,
  :name => "House-made whole-grain mustard"
},{
  :variation_id => vars[3].id,
  :name => "Butter"
},{
  :variation_id => vars[3].id,
  :name => "Lettuce"
},{
  :variation_id => vars[3].id,
  :name => "Pickles"
},{
  :variation_id => vars[3].id,
  :name => "Sliced red onion"
},{
  :variation_id => vars[4].id,
  :name => "Bleu cheese"
},{
  :variation_id => vars[4].id,
  :name => "Champagne vinaigrette"
},{
  :variation_id => vars[4].id,
  :name => "Honey mustard"
},{
  :variation_id => vars[4].id,
  :name => "Spicy lime & chili"
},{
  :variation_id => vars[4].id,
  :name => "Rancho diablo"
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

plates[0].variations << vars[0]