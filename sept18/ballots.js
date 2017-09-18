ballots = [{1: 'Smudge', 2 :'Tigger', 3: 'Simba'},
           {1: 'Bella', 2: 'Lucky', 3: 'Tigger'},
           {1: 'Bella', 2: 'Boots', 3: 'Smudge'},
           {1:'Boots', 2: 'Felix', 3: 'Bella'},
           {1: 'Lucky', 2: 'Felix', 3: 'Bella'},
           {1: 'Smudge', 2: 'Simba', 3: 'Felix'}]

votes = {}

ballots.forEach(function(eachBallot){
  eachBallot[1] in votes ? votes[eachBallot[1]] += 3 : votes[eachBallot[1]] = 3
  eachBallot[2] in votes ? votes[eachBallot[2]] += 2 : votes[eachBallot[2]] = 2
  eachBallot[3] in votes ? votes[eachBallot[3]] += 1 : votes[eachBallot[3]] = 1
});

winner = Object.keys(votes).reduce(function(eachPerson,currentWinner){
  return votes[eachPerson] > votes[currentWinner] ? eachPerson : currentWinner;
});

console.log(winner + " is the winner!");
