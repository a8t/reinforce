class Dictionary 
    def initialize
      @entries = {}
      @keywords = []
    end

    attr_reader :entries
    
    def keywords
        @keywords.sort
    end
    
    def add(new_entry)
        
        if new_entry.is_a? Hash
            @entries[new_entry.keys[0]] = new_entry.values[0]
            @keywords << new_entry.keys[0]
        else 
            @entries[new_entry] = nil
            @keywords << new_entry
        end
    end

    def include?(string)
        @entries.include?(string)
    end

    def find(string)
        return_hash = {}
        @keywords.each do |each_keyword|
            if each_keyword.start_with?(string)
                return_hash[each_keyword] =  @entries[each_keyword]
            end
        end
        return_hash
    end
    
end