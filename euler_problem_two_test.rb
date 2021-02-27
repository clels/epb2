require 'minitest/autorun'
require_relative 'euler_problem_two'

class EulerProblemTwoTest < Minitest::Test
  def test_throws_error_for_non_integer_param
    assert_raises RuntimeError do 
      EulerProblemTwo.new(up_to: "four million")
    end
  end
  
  def test_works_without_up_to_param
    @euler_no_init_param = EulerProblemTwo.new
    assert_equal 8, @euler_no_init_param.sequence.length
    assert_equal 1, @euler_no_init_param.sequence[0]
    assert_equal 2, @euler_no_init_param.sequence[1]
    assert_equal 3, @euler_no_init_param.sequence[2]
    assert_equal 5, @euler_no_init_param.sequence[3]
    assert_equal 8, @euler_no_init_param.sequence[4]
  end

  def setup
    @euler = EulerProblemTwo.new(up_to: 4000000)
  end

  def test_sequence
    assert_equal 32, @euler.sequence.length
    assert_equal 1, @euler.sequence[0]
    assert_equal 2, @euler.sequence[1]
    assert_equal 3, @euler.sequence[2]
    assert_equal 5, @euler.sequence[3]
    assert_equal 8, @euler.sequence[4]
  end

  def test_even_sum_of_sequence
    assert_equal 4613730, @euler.even_sum
  end
end
