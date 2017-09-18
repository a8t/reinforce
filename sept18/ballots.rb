ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]


votes = {}

ballots.each do |each_ballot|
  votes[:"#{each_ballot[1]}"] ? votes[:"#{each_ballot[1]}"] += 3 : votes[:"#{each_ballot[1]}"] = 3
  votes[:"#{each_ballot[2]}"] ? votes[:"#{each_ballot[2]}"] += 2 : votes[:"#{each_ballot[2]}"] = 2
  votes[:"#{each_ballot[3]}"] ? votes[:"#{each_ballot[3]}"] += 1 : votes[:"#{each_ballot[3]}"] = 1
end

def winner(votes)

  votes.max_by { |name,votes| votes}[0]

end

puts "#{winner(votes)} is the winner."
