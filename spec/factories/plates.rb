# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :plate do
    name "MyString"
    description "MyString"
    chef "MyString"
    vegitarean false
    gluten_free false
    price "9.99"
  end
end
