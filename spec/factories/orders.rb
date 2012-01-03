# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
      total 1
      order_type 1
      location "MyString"
    end
end