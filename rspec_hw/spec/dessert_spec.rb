require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:brownie) {Dessert.new('brownie', 3, 'sam')}


  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq('brownie')
    end
    it "sets a quantity" do
      expect(brownie.quantity).to eq(3)
    end

    it "starts ingredients as an empty array" do
      expect(brownie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new('brownie', '3', 75)}.to raise_error(ArgumentError)
    end

  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(brownie.ingredients).to_not include('milk')
      brownie.add_ingredient('milk')
      expect(brownie.ingredients).to include('milk')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      brownie.shuffle!
        expect(brownie.ingredients).to_not eq(brownie.ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(brownie.eat(1)).to eq(2)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{brownie.eat(4)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(brownie.serve).to eq("Sam has made 3 brownies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      subject(:brownie) { Dessert.new('brownie', 3, chef) }
      expect(brownie.make_more).to eq(400)
    end
  end
end
