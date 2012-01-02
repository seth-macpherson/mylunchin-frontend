require 'spec_helper'

describe "plates/new.html.haml" do
  before(:each) do
    assign(:plate, stub_model(Plate,
      :name => "MyString",
      :description => "MyString",
      :chef => "MyString",
      :vegetarian => false,
      :gluten_free => false,
      :price => "9.99"
    ).as_new_record)
  end

  it "renders new plate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plates_path, :method => "post" do
      assert_select "input#plate_name", :name => "plate[name]"
      assert_select "input#plate_description", :name => "plate[description]"
      assert_select "input#plate_chef", :name => "plate[chef]"
      assert_select "input#plate_vegetarian", :name => "plate[vegetarian]"
      assert_select "input#plate_gluten_free", :name => "plate[gluten_free]"
      assert_select "input#plate_price", :name => "plate[price]"
    end
  end
end
