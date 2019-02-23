require "pry"
class Transfer
  # your code here
  
  def initialize(to, from, amount)
    @to = to
    @from = from
    @amount = amount
    @@all << self
  end
end
