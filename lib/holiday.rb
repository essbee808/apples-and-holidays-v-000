require 'pry'

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies[:winter].each do |season, supplies|
    supplies << "Balloons"
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << "#{supply}"
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
  holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies[:winter].values.flatten!

end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
  holidays.each do |holiday, supply_array|
    puts "  #{holiday.to_s.split('_').map{|w| w.capitalize}.join(' ')}: #{supply_array.join(", ")}"
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_supplies.map do |season, holidays|
    holidays.map do |holiday, supply_array|
      if supply_array.include?("BBQ")
      end
    end
  end
end







