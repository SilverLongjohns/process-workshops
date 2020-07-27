require "leap_year"

describe LeapYear do
  subject(:leapyear) { described_class.new }
  it "can check if the year 2000 was a leap year" do
    expect(leapyear.leap_year?(2000)).to eq true
  end

  it "can check that a year divisible by 4 was a leap year" do
    expect(leapyear.leap_year?(2004)).to eq true
  end

  it 'can check that years divisible by 100 but not by 400 are not leap years' do
    expect(leapyear.leap_year?(1700)).to eq false
  end

  it 'can check that years not divisible by 4 are not leap years' do
    expect(leapyear.leap_year?(9)).to eq false
  end

  it 'can take a date range and return all leap years within the range' do
    leapyear.year_array(1999, 2005)
    expect(leapyear.output).to eq [2000, 2004]
  end
end