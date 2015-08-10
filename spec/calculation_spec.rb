require_relative "../calculations.rb"
require "spec_helper.rb"

describe Calculation do

  let!(:calculation) { Calculation.new(1,2) }

  describe ".initialize" do
    it "sets the operants" do
      expect(calculation.operands).to eq [1,2]
    end
  end


  describe "#add" do
    it "returns the sum of operands" do
      expect(calculation.add).to eq 3
    end
  end

  describe "#minus" do
    it "returns the difference of operands" do
      expect(calculation.minus).to eq(-1)
    end
  end

  describe "#multiply" do
    it "returns the product of operands" do
      expect(calculation.multiply).to eq 2
    end
  end

  describe "#multiply" do
    it "returns the difference of quotient" do
      expect(calculation.divide).to eq 0
    end
  end


end
