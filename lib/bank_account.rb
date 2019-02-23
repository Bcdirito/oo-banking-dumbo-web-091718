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
    puts "Your balance is $#{@balance}."
  end
end
