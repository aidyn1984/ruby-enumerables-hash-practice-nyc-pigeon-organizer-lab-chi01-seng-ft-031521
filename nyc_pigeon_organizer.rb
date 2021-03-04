
def nyc_pigeon_organizer(pigeon_data)

  results = pigeon_data.each_with_object({}) do |(key, values), final_array|
  # binding.pry
    values.each do |inner_key, names|
    # binding.pry
      names.each do |name|
      # binding.pry
        if !final_array[name] #If there is no "Theo"name as a key in {final array}
          final_array[name] = {}
        end
          if !final_array[name][key]
            final_array[name][key] = []
          end
          final_array[name][key] << inner_key
      end
    end  
  end
end

