ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]


votes = {}

ballots.each do |each_ballot|

  first  = each_ballot[1].to_sym
  second = each_ballot[2].to_sym
  third  = each_ballot[3].to_sym
  
  votes.has_key?(first) ? votes[first] += 3 : votes[first] = 3
  votes.has_key?(second) ? votes[second] += 2 : votes[second] = 2
  votes.has_key?(third) ? votes[third] += 1 : votes[third] = 1
end

def winner(votes)

  votes.max_by { |name,votes| votes}[0]

end

puts "#{winner(votes)} is the winner."
