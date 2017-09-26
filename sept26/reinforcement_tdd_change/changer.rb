class Changer

    def self.make_change(amount)
        change_array = []
        until amount == 0
            if amount >= 25
                change_array << 25
                amount = amount - 25
            elsif amount >= 10
                change_array << 10
                amount = amount - 10
            elsif amount >= 5
                change_array << 5
                amount = amount - 5
            elsif amount >= 1
                change_array << 1
                amount = amount - 1
            end
        end

        return change_array
    end
end