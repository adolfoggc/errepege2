require 'rails_helper'

RSpec.describe "dnd_players/new", type: :view do
  before(:each) do
    assign(:dnd_player, DndPlayer.new(
      :name => "MyString",
      :age => 1,
      :race => 1,
      :gender => 1,
      :dnd_class => 1,
      :description => "MyText",
      :weight => "9.99",
      :height => "9.99"
    ))
  end

  it "renders new dnd_player form" do
    render

    assert_select "form[action=?][method=?]", dnd_players_path, "post" do

      assert_select "input[name=?]", "dnd_player[name]"

      assert_select "input[name=?]", "dnd_player[age]"

      assert_select "input[name=?]", "dnd_player[race]"

      assert_select "input[name=?]", "dnd_player[gender]"

      assert_select "input[name=?]", "dnd_player[dnd_class]"

      assert_select "textarea[name=?]", "dnd_player[description]"

      assert_select "input[name=?]", "dnd_player[weight]"

      assert_select "input[name=?]", "dnd_player[height]"
    end
  end
end
