require "pry"
class Transfer
  # your code here
  attr_reader :sender
  
  @@all = []
  
  def initialize(to, sender, amount)
    @to = to
    @sender = sender
    @amount = amount
    @@all << self
  end
end
