# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :plate do
    name "Burmese Curry Pork"
    description "A delicious blending of south eastern curries"
    chef "Super Chef"
    vegetarian false
    gluten_free true
    price "9.99"
  end
end
