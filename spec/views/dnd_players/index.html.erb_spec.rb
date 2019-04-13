require 'rails_helper'

RSpec.describe "dnd_players/index", type: :view do
  before(:each) do
    assign(:dnd_players, [
      DndPlayer.create!(
        :name => "Name",
        :age => 2,
        :race => 3,
        :gender => 4,
        :dnd_class => 5,
        :description => "MyText",
        :weight => "9.99",
        :height => "9.99"
      ),
      DndPlayer.create!(
        :name => "Name",
        :age => 2,
        :race => 3,
        :gender => 4,
        :dnd_class => 5,
        :description => "MyText",
        :weight => "9.99",
        :height => "9.99"
      )
    ])
  end

  it "renders a list of dnd_players" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
