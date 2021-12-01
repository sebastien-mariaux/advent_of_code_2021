require 'test/unit'

class Aoc
  def initialize(file='data.txt')
    @data = File.readlines(file)
  end

  def aoc_1
    @data.map!(&:to_i)
    @data.each_cons(2).select{ |i,j| i < j }.count

  end

  def aoc_2
    @data.map!(&:to_i)
    # @data.each_cons(3).map{|a| a.sum}.each_cons(2).select{ |i,j| i < j }.count
    @data.each_cons(4).select{|i, _, _, j| i < j}.count
  end
end

class AocTest < Test::Unit::TestCase
  def test_part_1
    assert_equal 7, Aoc.new('data_test.txt').aoc_1
  end

  def test_part_2
    assert_equal 5, Aoc.new('data_test.txt').aoc_2
  end
end

puts '################'
puts "PART 1"
puts Aoc.new.aoc_1
puts '###############'
puts "PART 2"
puts Aoc.new.aoc_2
puts '###############'
