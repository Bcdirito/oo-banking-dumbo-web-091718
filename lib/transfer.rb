require "pry"
class Transfer
  # your code here
  
  
  @@all << self
  def initialize(to, from, amount)
    @to = to
    @from = from
    @amount = amount
    @@all << self
  end
end
