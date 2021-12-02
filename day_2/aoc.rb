require 'test/unit'

class Aoc
  def initialize(file='data.txt')
    @data = File.readlines(file)
    @position = {x: 0, z: 0, aim: 0}
  end

  def aoc_1
    aoc(1)
  end

  def aoc_2
    aoc(2)
  end

  def aoc(part)
    @data.map{|row| row.split(' ')}
         .map{|action, value| [action, value.to_i]}
         .each{| action, value | send("move_#{part}", action, value)}
    @position[:x] * @position[:z]
  end


  def move_1(action, value)
    case action
    when 'forward'
      @position[:x] += value
    when 'up'
      @position[:z] -= value
    when 'down'
      @position[:z] += value
    end
  end

  def move_2(action, value)
    case action
    when 'forward'
      @position[:x] += value
      @position[:z] += @position[:aim] * value
    when 'up'
      @position[:aim] -= value
    when 'down'
      @position[:aim] += value
    end
  end
end

class AocTest < Test::Unit::TestCase
  EXPECTED_1 = 150
  EXPECTED_2 = 900

  def test_part_1
    assert_equal EXPECTED_1, Aoc.new('data_test.txt').aoc_1
  end

  def test_part_2
    assert_equal EXPECTED_2, Aoc.new('data_test.txt').aoc_2
  end
end

puts '---RESULTS---'
puts '-------------'
puts "PART 1: #{Aoc.new.aoc_1}"
puts "PART 2: #{Aoc.new.aoc_2}"
puts '-------------'
