def get_first_name_of_season_winner(data, season)
  data[season].find do |contestant|
    return contestant['name'].split.first if contestant['status'] == 'Winner'   
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["name"] if contestant["occupation"] == occupation          
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.map do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count 
end

def get_occupation(data, hometown)
  data.find do |season, contestants|
    contestants.find do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  new_age_array = 0
  count = 0
    data[season].map do |contestants|
      new_age_array += contestants["age"].to_f
        count += 1
    end
  (new_age_array / count).round()
end

