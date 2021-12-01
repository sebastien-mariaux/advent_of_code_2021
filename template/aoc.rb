require 'test/unit'

class Aoc
  def initialize(file='data.txt')
    @data = File.readlines(file)
  end

  def aoc_1

  end

  def aoc_2
  end
end

class AocTest < Test::Unit::TestCase
  EXPECTED_1 = 0
  EXPECTED_2 = 0

  def test_part_1
    assert_equal EXPECTED_1, Aoc.new('data_test.txt').aoc_1
  end

  def test_part_2
    assert_equal EXPECTED_2, Aoc.new('data_test.txt').aoc_2
  end
end

puts '################'
puts "PART 1"
puts Aoc.new.aoc_1
puts '###############'
puts "PART 2"
puts Aoc.new.aoc_2
puts '###############'
