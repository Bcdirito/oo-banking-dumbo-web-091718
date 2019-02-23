require "pry"
class Transfer
  # your code here
  attr_reader :sender
  
  @@all = []
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @@all << self
  end
end
