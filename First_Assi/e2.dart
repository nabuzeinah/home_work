/* the difference between var and dynamic:
var: it's a keyword that points to the datatype
when we declare the variable with var, it take the datatype automatically from
the first value, then we can't change the datatype or assign another datatype to it
ex:
var str = 'Nidaa';
str = 123; // this is error

dynamic: it's a weak datatype that can change any time
when we declare the variable with dynamic, it take the datatype automatically from
the value assign to, then we can change the datatype anytime
ex:
dynamic str = 'Nidaa';  // assign String variable
str = 123; // change the datatype to int
str = true; // change the datatype to bool
*/