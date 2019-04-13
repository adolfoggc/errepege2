require 'rails_helper'

RSpec.describe DndPlayer, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  context "DnDPlayer validation" do
  	
  	it 'No name is valid?' do
  		p = DndPlayer.new(name: 'A', race: 1, gender: 1, 
  		 age: 1, description: "A", weight: 1.1, height: 1.1)
  		p.name = nil
  		expect(p.valid?).to be_falsey
  	end
  	it 'No description is valid?' do
  		p = DndPlayer.new(name: 'A', race: 1, gender: 1, 
  		 age: 1, description: "A", weight: 1.1, height: 1.1)
  		p.description = nil
  		expect(p.valid?).to be_falsey
  	end
  	it 'No age is valid?' do
  		p = DndPlayer.new(name: 'A', race: 1, gender: 1, 
  		 age: 1, description: "A", weight: 1.1, height: 1.1)
  		p.age = nil
  		expect(p.valid?).to be_falsey
  	end
  	it 'No race is valid?' do
  		p = DndPlayer.new(name: 'A', race: 1, gender: 1, 
  		 age: 1, description: "A", weight: 1.1, height: 1.1)
  		p.race = nil
  		expect(p.valid?).to be_falsey
  	end

  	it 'No gender is valid?' do
  		p = DndPlayer.new(name: 'A', race: 1, gender: 1, 
  		 age: 1, description: "A", weight: 1.1, height: 1.1)
  		p.gender = nil
  		expect(p.valid?).to be_falsey
  	end

  	###pulando o mais óbvio
  	it 'Number name is valid?' do
  		p = DndPlayer.new(name: 'A', race: 1, gender: 1, 
  		 age: 1, description: "A", weight: 1.1, height: 1.1)
  		p.name = 1+1
  		expect(p.valid?).to be_truthy #rails converte tudo pra string pelo visto
  	end

  end 
end
