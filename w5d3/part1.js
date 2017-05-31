// mad lib
function madLib(verb, adjective, noun) {
  return `${noun} is ${adjective} and ${verb}`
}

//isSubstring

function isSubstring(string, sub) {
  let words = string.split(" ");
  return words.includes(sub)
}

// fizzbuzz
function fizzBuzz(array) {
  var result = []
  for (i=0; i< array.length; i++) {
  	if (array[i] % 3 === 0) {
    	result.push(array[i]);
    } else if (array[i] % 5 === 0) {
    	result.push(array[i]);
    }
  }

  return result;
}

//isPrime
function isPrime(number) {
 for (i=2; i < number; i++) {
 	if (number % i == 0) {
    	return false;
    }
 }
  return true;
}

//sumofprimes
function sumOfNPrimes(number) {
  	var result = []

    var i = 2;
	while (result.length < number ) {
      if (isPrime(i)) {
      	result.push(i)
      }

      i++;
    }

  return result;
}
