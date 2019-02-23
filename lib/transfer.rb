require "pry"
class Transfer
  # your code here
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  @@all = []
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
    @@all << self
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if @status == "pending" && @sender.valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      return "Transaction rejected. Please check your account balance."
    end
  end
end
