require "pp"
seats = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]


def free_seats(seats)
  seats.each_with_index do |each_row, row_index|
    each_row.each_with_index do |each_seat,seat_index|

      if each_seat == nil
       puts "Row #{row_index+1} seat #{seat_index+1} is free. Do you want to sit here? (y/n)"
      else
        next
      end

      response = gets.chomp

      if response == 'y'
        puts "What is your name?"
        user_name = gets.chomp
        seats[row_index][seat_index] = user_name
        pp seats
      else
        next
      end

    end
  end
end

free_seats(seats)
