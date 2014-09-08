require "./lib/fizzbuzz.rb"
require "test/unit"

class TestFizzbuzz < Test::Unit::TestCase

  def test_default
  	fb = Fizzbuzz.new
  	vals = fb.iterate

  	#default is 1 to 100 which means 100 values
  	assert_equal(vals.length, 100)

  	# first value should be 1. note: the array is strings not integers
    assert_equal(vals.first, '1')
    # last value should be buzz
    assert_equal(vals.last, 'buzz')

    # check divisible only by only 3
    assert_equal(vals[2], 'fizz') # 3 is only divisible by 3
    assert_equal(vals[5], 'fizz') # 6 is only divisible by 3

    # check divisible by only 5
    assert_equal(vals[4], 'buzz') # 5 is only divisible by 5
    assert_equal(vals[9], 'buzz') # 10 is only divisible by 5

    # check divisible by both
    assert_equal(vals[14], 'fizzbuzz') # 15 is divisible by 3 and 5
    assert_equal(vals[29], 'fizzbuzz') # 30 is divisible by 3 and 5

    
  end

  def test_custom
  	fb = Fizzbuzz.new
  	vals = fb.iterate({:end_range=>20, :denominator_fizz=>2, :denominator_buzz=> 5})

  	#we set our range to 20
  	assert_equal(vals.length, 20)

  	# first value should be 1 (default). note: the array is strings not integers
    assert_equal(vals.first, '1')
    # last value should be fizzbuzz
    assert_equal(vals.last, 'fizzbuzz')

    # check divisible only by only 2
    assert_equal(vals[1], 'fizz') # 2 is only divisible by 2
    assert_equal(vals[3], 'fizz') # 4 is only divisible by 2

    # check divisible by only 5
    assert_equal(vals[4], 'buzz') # 5 is only divisible by 5
    assert_equal(vals[14], 'buzz') # 15 is only divisible by 5

    # check divisible by both
    assert_equal(vals[9], 'fizzbuzz') # 10 is divisible by 2 and 5
    assert_equal(vals[19], 'fizzbuzz') # 20 is divisible by 2 and 5
  end

end