def reformat_languages(languages)
  new_hash = { }
      languages.each do |key,value|
        if value.is_a?(Hash)
          value.each do |n_key,n_value|
             if n_value.is_a?(Hash)
               n_value.each do |nn_key,nn_value|
                 new_hash[n_key] = {nn_key => nn_value}
               end
             end
            if n_key.to_s == "javascript"
              new_hash[n_key][:style] = [:oo ,key]
            else
            new_hash[n_key][:style]  =  [key]
           end 
          end
        end
      end
      new_hash

end
