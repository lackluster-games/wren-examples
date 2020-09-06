/* 
 * example of using lists in wren 
*/

//make a list of strings
var list1 = [ "Hello,", "World"]

//make a second list.
var list2 = [ 1,2,3,4,5,6 ]

//get the first item in the list.
var str = list1[0]   

//can also use negative index.
//starts at the end of the list and goes backwards.
var last = list2[-1]

System.print("str is: %(str)")
System.print("last item in list2 is: %(last)")

//make a slice from list2 from index 1 to index 3, including index 3.
var slice = list2[1..3]

//get the first item in slice which should be the second item from list2
var item1 = slice[0]  

System.print("slice[0] is: %(item1)")

//you can mix types in a list
var list_mixed = ["hello", 5, 3.14,true]

//use the 'filled' method to create a list.
//this is a list of size 3
//each items in the list is 0 
var list3 = List.filled(3,0)

//get the size of a list using 'count' method
var size = list3.count

//add item to list1 using 'add' method.
//adds item  to the end of the lists
list1.add("How are you?")

//add item to a list using the 'insert ' method
//this inserts a 7 into positon 3 in list2.
list2.insert(3,7)

//remove item at index 3
list2.removeAt(3)

//concat two list together
var combined_list = list1 + list2

System.print("the size of list1 is %(list1.count). the size of list2 is %(list2.count). the size of combined_list is %(combined_list.count)")

//clear entire list
list1.clear()

var num2 = 6

//you can also use lists as maps/dictionaries.
//create a map. "key" : "value"
var map1 = {
        "Hello"  : "World",
        "Return" : "5",
        num2     : "nope",  //uses the value in 'num2' as the key.
        1        : "yep"
}

//add item to map. key = 'notthere' value = 'overthere'
map1["notthere"] = "overthere"

//you can check to see if a map has  akey using 'containsKey' method
System.print("is Hello a key? %(map1.containsKey("Hello"))")

//take value for 'Return' out of map1
map1.remove("Return")

//Return should not be a key anymore. 
System.print("is Return a key now? %(map1.containsKey("Return"))")

//get a list of the keys in a map
var keys = map1.keys

//get a list of the values in a map
var values = map1.values


