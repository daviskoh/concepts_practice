let inputs = process.argv.slice(2);
let result = inputs.map(string => string[0])
                   .reduce((prevChar, currChar) => prevChar + currChar);

let output = `[${inputs}] becomes "${result}"`;
console.log(output);

