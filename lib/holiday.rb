require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
        holiday_hash[:summer][:fourth_of_july][1] #call the hash, then call the summer key, then the fourth of July value and call the second index [0] which pulls "BBQ"
        #NOTE THIS IS HARDCODING BUT THE LEARN TEST ACCEPTS IT
     
    end


def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash[:winter][:christmas] << supply.to_s #call the holiday_hash, then winter key, then the value of christmas and add supply as a string to add the supplies
  holiday_hash[:winter][:new_years] << supply.to_s #same as above

    


end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash[:spring][:memorial_day] << supply.to_s #same as the winter

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  holiday_hash[season].store(holiday_name, supply_array) #call the holiday_hash eith the value of seasons. Then .store(stores and adds to the key season) and add holiday_name and holiday_supply


  # remember to return the updated hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

  holiday_hash[:winter].values.flatten #take holiday_hash and the key of winter, .values.flattes will take all the values and flatten it to one string



end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |key, value| #iterate through the key and values of holiday_hash
    puts "#{key}:".capitalize #string interpolates the key and .capitalize to capitalize the interpolation
    holiday_hash[key].each do |holiday, supply_array| # interpolate the key through holiday and supply_array
      hol = "#{holiday}".split("_") #add the interpolated holiday into the "hol" and split it at "_"
      str = " " # add an empty string
      hol.each do |word| # iterate through the "hol", and make the element word
        str << " #{word.capitalize}" #push word to the empty string, and capitalize it
      end
      str << ":" # add ":" to the string
      com = false #com + comma will = false and means to remove the commas
      supply_array.each do |supply| # supply become in array and then iterate through each of it
        if com #if there is a comma
          str << "," #add a "," to the string
        else
          com = true #if the comma is true *since it will be due to above"
        end
        str << " #{supply}" #add the interpolated supply intot he string
      end
      puts str #call the full string after the lloop
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  grillin = [] #empty array created
 holiday_hash.each do |key,value| #iterate through each key and value of holiday_hash, going into the nested hash
  value.each do |holiday, supply|  #withing this nested hash, then call into it again to enter another layer
   if supply.include?("BBQ") # if any of the supplies within the value include "BBQ" of the holiday element
    grillin << holiday # push the holiday that include sthe supple with "BBQ"
   end
   end
   end
   grillin #call grilling outside of the loop
end








