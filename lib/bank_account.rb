class BankAccount
  attr_reader :name
  attr_accessor :balance, :status
  
  @@all = []
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    @@all << self
  end
  
  def deposit(amt)
    @balance += amt
  end
  
  def display_balance
    return "Your balance is $#{@balance}."
  end
  
  def valid?
    @status == "open" && @balance > 0
  end
  
  def close_account
    @status = "closed"
  end
end
