class BankAccount
  attr_reader :name
  attr_accessor :balance
  
  @@all = []
  
  def initialize(name)
    @name = name
    @balance = 1000
    @@all << self
  end
end
