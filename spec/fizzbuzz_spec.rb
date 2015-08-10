require_relative '../fizzbuzz.rb'
require "spec_helper.rb"

describe FizzBuzz do

  let!(:fizzbuzz) { FizzBuzz }

  describe ".initialize" do
    it "sets the number" do
      expect(fizzbuzz.new(10).num).to eq 10
    end
  end

  describe "run" do
    context "input is divisible by 3" do
      it "returns Fizz" do
        expect(fizzbuzz.new(6).run).to eq "Fizz"
      end
    end
    context "input is divisible by 5" do
      it "returns Buzz" do
        expect(fizzbuzz.new(10).run).to eq "Buzz"
      end
    end
    context "input is either divisible by 3 and 15" do
      it "returns Fizz Buzz" do
        expect(fizzbuzz.new(15).run).to eq "Fizz Buzz"
      end
    end
    context "else" do
      it "returns the number" do
        expect(fizzbuzz.new(1).run).to eq 1
      end
    end
  end

end
