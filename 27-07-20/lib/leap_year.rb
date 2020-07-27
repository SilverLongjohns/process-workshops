class LeapYear
  attr_reader :output
  def initialize
    @output = []
  end

  def leap_year?(year)
    if year % 400 == 0
      true
    elsif year % 4 == 0 and year % 100 != 0
      true
    else
      false
    end
  end

  def year_array(start, finish)
    years = *(start..finish)
    years.each do |x|
      if x % 400 == 0
        @output << x
      elsif x % 4 == 0 and x % 100 != 0
        @output << x
      end
    end
  end  
end