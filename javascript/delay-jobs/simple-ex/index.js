// write func that accepts an array and
// console.logs its contents with a 3 second delay
// in prepetuity

// log 1st element
// move to end of queue
function logFirstElement(array) {
  const elem = array[0];
  console.log(elem);
  array.push(elem);
  array.shift();
}

var data = [
  1,
  2,
  3,
  4
];

setInterval(() => {
  logFirstElement(data);
}, 3000);
