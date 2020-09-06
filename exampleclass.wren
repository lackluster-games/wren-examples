/*
    simple example of using classes in wren
*/

class Animal {
    construct new(name,sound) {           //constructor for Animal class.
        _name  = name                    //create field 'name' for Animal
        _sound = sound                  //create field 'sound' for Animal
    }
    setName=(value) { _name = value }      //setter for name
    setSound=(value) { _sound = value }   //setter for sound
    getName  { _name }                   //getter for name 
    getSound { _sound }                 //getter for sound
}

class Mamal is Animal{                               //inherits from Animal
    construct new(name,sound,legs) {                //constructor for mamal class
        super(name,sound)                          //call the constructor in Animal
        _legs = legs                              //create field 'legs' for mamal. 
    }
    setName(value)  { super.setName(value)  }       //setter for name. calls the setter in Animal
    setSound(value) { super.setSound(value) }      //setter for sound. calls the setter in Animal
    setLegs=(value) { _legs = value }             //setter for legs
    getName  { super.getName }                   //getter for name. calls the getter in Animal 
    getSound { super.getSound }                 //getter for sound. calls the getter in Animal
    getLegs  { _legs }                         //getter for legs

    printInfo() {                             //method which will print out information
        System.print("my favorite animal is %(super.getName) and it makes the sound %(super.getSound). it has %(_legs) legs")
    }
}


var dog = Mamal.new("dog","bark",4)   //crete dog object from Mamal class calling the constructor

System.print("animal is %(dog.getName). sound is %(dog.getSound). number of legs is %(dog.getLegs)")

dog.setName  = "cat"    //change name to 'cat' using setter
dog.setSound = "meow"  //change sound to 'meow' using setter

dog.printInfo()      //call method 'printInfo' inside of mamal class

