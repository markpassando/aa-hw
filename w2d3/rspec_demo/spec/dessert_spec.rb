require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Bob") }
  subject(:cupcake) { Dessert.new("cupcake", 100, chef) }
  subject(:brownie) { Dessert.new("cupcake", "100", chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(cupcake.type).to eq("cupcake")
    end

    it "sets a quantity" do
      expect(cupcake.quantity).to be >= 0
    end

    it "starts ingredients as an empty array" do
      expect(cupcake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{brownie}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cupcake.add_ingredient("flour")
      expect(cupcake.ingredients).to include("flour")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      cupcake.add_ingredient("flour")
      cupcake.add_ingredient("sugar")
      cupcake.add_ingredient("eggs")
      expect(cupcake.ingredients).to match_array(["eggs", "flour", "sugar"])
      expect(cupcake.ingredients).not_to eq(["eggs", "flour", "sugar"])
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cupcake.eat(99)
      expect(cupcake.quantity).to eq(1)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{cupcake.eat(101)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Bob the Great Baker")
      expect(cupcake.serve).to eq("Chef Bob the Great Baker has made 100 cupcakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cupcake)
      cupcake.make_more
    end
  end
end
