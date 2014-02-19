def withdraw(amount)
  denom = 10
  # if 0 or negative
  if amount <= 0
    return false
  end
  # if not divisible by 10
  if amount % denom != 0
    return false
  else
  # if divisible by 10
    notes = amount / denom
    arr = []
    notes.times { arr << denom }
    return arr
  end
end

# import required testing libraries
require 'minitest/spec'
require 'minitest/autorun'

# Below are the tests for automatically checking your solution.
# You need to replace these tests after each step.


describe 'atm' do
  [
    [-1, false],
    [0, false],
    [7, false],
    [45, false],
    [20, [10, 10]],
    [40, [10, 10, 10, 10]],
  ].each do |input, expected|
    it "should return #{expected} when $#{input} is withdrawn" do
      withdraw(input).must_equal expected
    end
  end
end