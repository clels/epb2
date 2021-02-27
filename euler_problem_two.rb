class EulerProblemTwo
  attr_accessor :even_sum
  attr_accessor :sequence

  def initialize(up_to: 42)
    raise "up_to needs to be an integer" unless up_to.is_a? Integer

    @up_to = up_to
    @even_sum = 0
    @sequence = [1,2]

    fib(1,2)
  end

  private

  def fib(a, b)
    next_val = a + b
    return if next_val >= @up_to

    @sequence << next_val
    @even_sum += next_val if next_val.even?

    fib(b, next_val)
  end
end
