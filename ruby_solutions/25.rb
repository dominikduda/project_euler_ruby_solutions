class Fibonacci
  attr_reader :index

  def initialize(term_rear, term_front)
    @term_rear = term_rear
    @term_front = term_front
    @index = 2
  end

  def next!
    @term_rear, @term_front, @index = @term_front, @term_front + @term_rear, @index + 1
    @term_front
  end
end

fib = Fibonacci.new(1, 1)
term_length = 0

term_length = fib.next!.to_s.length while term_length < 1_000

puts fib.index
