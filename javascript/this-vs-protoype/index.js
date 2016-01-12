function A() {
  const self = this;

  this.method1 = () => {
    console.log('method1');
  };

  this.changeMethod1 = () => {
    self.method1 = () => {
      console.log('method1 is changed');
    };
  };
}

A.prototype.method2 = () => {
  console.log('method2');
};

A.prototype.changeMethod2 = () => {
  A.prototype.method2 = () => {
    console.log('method2 is changed');
  };
};

const a = new A();
const b = new A();

a.method1();
a.method2();

b.method1();
b.method2();

a.changeMethod1();
a.changeMethod2();

a.method1();
a.method2();

b.method1();
b.method2();

