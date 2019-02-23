require "pry"
class Transfer
  # your code here
  attr_reader :sender, :receiver
  attr_accessor :status
  
  @@all = []
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = pending
    @@all << self
  end
end
