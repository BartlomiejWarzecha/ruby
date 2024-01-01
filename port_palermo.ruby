module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0,4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    # alt
    #%w[OIL GAS].include?(ship_identifier[0, 3]) ? :A : :B

    case ship_identifier[0,3].to_s
      when "OIL", "GAS"
        :A
      else
        :B
    end
  end
end
