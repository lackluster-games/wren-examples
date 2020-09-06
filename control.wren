/*
 *  Control in Wren
 */


//standard if/elseif/else
if(true) {
    //do some stuff
} else if(true) {
    //do something    
} else {
    //do this instead
}

/*
 * wren uses the same operators as C
 * '&&','||','==','<','>',">=",'<=','!'
 */

//ternary operator is similar to C
var x = (5 < 6)? 1 : 2

//wren has while loops
var i = 0
while(i != 10) {
    //do something
    i = i + 1
}

//wren also has for loops.
//iterate form 1 to 10 includeing 10
for(i in 1..10) {
    //do soemthing
}

//use three dots to exclude the last number
//iterate form 1 to 9
for(i in 1...10) {
    //do something
}

//can also use a list instead
for(j in ["hello",3.14,true,5,"world"]) {
    //do something
}

var list1 = [1,2,3,4,5]

//iterate over items in a list
for(item in list1) {
    //do something
}

var dict = {
    "key1" : 1,
    "key2" : 3,
    "key3" : 5
}

//iterate over the keys in a dictionary
for(key in dict.keys) {
    //do something
}

//iterate over the values in a dictionary
for(value in dict.values) {
    //do something
}

