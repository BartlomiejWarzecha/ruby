module SavingsAccount
  def self.interest_rate(balance)
    case balance
    when 0...1000
      interest_rate = 0.5
    when 1000...5000
      interest_rate = 1.621
    when 5000..Float::INFINITY
      interest_rate = 2.475
    else
      interest_rate = 3.213
    end

    interest_rate

  end

  def self.annual_balance_update(balance)
    interest_rate = self.interest_rate(balance)
    return balance + balance * interest_rate

  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    annual_increment = self.annual_balance_update(current_balance)
    i = 0

    until desired_balanced <= current_balance
      current_balance += annual_increment
      i += 1
    end
      return i
  end
end
