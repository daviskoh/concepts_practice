/**
 * == - type coercion
 * === no type coercion
 */

// NOTE: === is straightforward so examples are skipped

console.log('1 == 2:', 1 == 2); // => false
console.log('false == 0:', false == 0); // => true
console.log('false == undefined:', false == undefined); // => false
console.log('true == false:', true == false); // => false
console.log('true == 1:', true == 1); // => true
console.log('"0" == false:', "0" == false); // => true
console.log('"1" == true:', "1" == true); // => true
console.log('"0" == 0:', "0" == 0); // => true
console.log('"1" == 1:', "1" == 1); // => true

console.log('\n***** > & < operations *****\n');

console.log('true > 0:', true > 0); // => true
console.log('false < 1:', false < 1); // => true

