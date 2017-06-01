const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});



function tea () {
  reader.question("Do you want tea?", (response) => {
    console.log(`${response}, you get tea i don't care`);
      reader.question("Do you want biscuts?", (response2) => {
        console.log(`${response2}, yea biscuts`);
        reader.close();
      });

  });
}

tea();
