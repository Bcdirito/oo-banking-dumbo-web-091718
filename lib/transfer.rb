require "pry"
class Transfer
  # your code here
  
  
  @@all = []
  
  def initialize(to, from, amount)
    @to = to
    @from = from
    @amount = amount
    @@all << self
  end
end
