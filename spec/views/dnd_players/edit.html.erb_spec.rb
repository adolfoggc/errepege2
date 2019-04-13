require 'rails_helper'

RSpec.describe "dnd_players/edit", type: :view do
  before(:each) do
    @dnd_player = assign(:dnd_player, DndPlayer.create!(
      :name => "MyString",
      :age => 1,
      :race => 1,
      :gender => 1,
      :experience => 1,
      :description => "MyText",
      :weight => "9.99",
      :height => "9.99"
    ))
  end

  it "renders the edit dnd_player form" do
    render

    assert_select "form[action=?][method=?]", dnd_player_path(@dnd_player), "post" do

      assert_select "input[name=?]", "dnd_player[name]"

      assert_select "input[name=?]", "dnd_player[age]"

      assert_select "input[name=?]", "dnd_player[race]"

      assert_select "input[name=?]", "dnd_player[gender]"

      assert_select "input[name=?]", "dnd_player[experience]"

      assert_select "textarea[name=?]", "dnd_player[description]"

      assert_select "input[name=?]", "dnd_player[weight]"

      assert_select "input[name=?]", "dnd_player[height]"
    end
  end
end
