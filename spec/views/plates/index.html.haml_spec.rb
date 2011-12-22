require 'spec_helper'

describe "plates/index.html.haml" do
  before(:each) do
    assign(:plates, [
      stub_model(Plate,
        :name => "Name",
        :description => "Description",
        :chef => "Chef",
        :vegitarean => false,
        :gluten_free => false,
        :price => "9.99"
      ),
      stub_model(Plate,
        :name => "Name",
        :description => "Description",
        :chef => "Chef",
        :vegitarean => false,
        :gluten_free => false,
        :price => "9.99"
      )
    ])
  end

  it "renders a list of plates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Chef".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
