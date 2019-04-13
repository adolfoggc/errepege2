require 'rails_helper'

RSpec.describe "dnd_players/show", type: :view do
  before(:each) do
    @dnd_player = assign(:dnd_player, DndPlayer.create!(
      :name => "Name",
      :age => 2,
      :race => 3,
      :gender => 4,
      :experience => 5,
      :description => "MyText",
      :weight => "9.99",
      :height => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
