1)template string: use backticks to enclose expressions inclusing variables and fn calls.
 eg:return `${lname} ${fname}`;
 or call a fn as in
 const greetings= `hello+${getname(fname,laname)}`;
 
 2)Arrow fn:
eg: function greetings(name){return ('hello'+name)}.This becomes: 
const greetings = (name) => {return (`hello ${name}`)}

3) Rest operator:
const sum = (...args) =>{}

4) Spread operator:
elements in case of arrays /key-value pairs ion case of objects
Let mArray=[1,2,3] ; console.log([...mArray]); This outputs all emelets of aray
or mArray2=[...mArray1] ( this creates a copy as opposed to mArray1 = mArray2 where 2 also gets updated if 1 changes)
Let mArray3=mArray1.concat(Marray2) is same as Let mArray3 = [0,...mArray1,...mArray2]
use Let mObj3={...mObj1,...mObj2} 


