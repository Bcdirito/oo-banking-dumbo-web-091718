require "pry"
class Transfer
  # your code here
  attr_reader :sender, :receiver, :amount, :last_transaction
  attr_accessor :status

  def initialize (sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? == true && receiver.valid? == true
  end

  def execute_transaction
    if @status != "complete" && (@amount <= sender.balance)
      sender.balance -= @amount
      receiver.balance += @amount
      @last_transaction = @amount
      @status = "complete"
    else
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if @last_transaction != nil
      sender.balance += @last_transaction
      receiver.balance -= @last_transaction
      @status = "reversed"
    end
  end
end
