arr = ["Totam", "ut", "odit", "quis", "Maiores", "unde", "EX", "EST", "corporis"]

arr.forEach( function(eachString) {
  if (eachString.length > 4 && eachString == eachString.toLowerCase()) {
    console.log("long and lowercase");
  } else if (eachString.length > 4) {
    console.log("long");
  } else if (eachString == eachString.toLowerCase()) {
    console.log("lowercase");
  } else {
    console.log(eachString);
  }
})
