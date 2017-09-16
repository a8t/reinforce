records = [
  {name: 'someone', points: 10, notes: ["this is a note", "this is too"]},
  {name: 'someone else', points: 50, notes: ['wow']},
  {name: 'another person', points: 30, notes: []}
]

maxPoints = records.reduce( function(currentMax, currentRecord, currentIndex, array){
  return currentRecord.points > currentMax ? currentRecord.points : currentMax;
}, 0);

whichRecord = records.find( function(eachRecord) {
  return eachRecord.points == maxPoints;
})

console.log(whichRecord);
