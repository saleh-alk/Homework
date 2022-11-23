function titleize(nameArr, callback){
    nameArr.forEach(ele => {
        console.log(callback(ele))
    });
}

function printCallback(ele){
   return  `Mx. ${ele} Jingleheimer schmidt`
}

titleize(["Mary", "Brian", "Leo"], printCallback);

function Elephant(name, height, tricksArray){
    this.name = name;
    this.height = height;
    this.tricksArray = tricksArray;
}

Elephant.prototype.trumpet = function(){
    return `${this.name} goes phrRRRRRRRRRRR!!!!!!!`
}

Elephant.prototype.grow = function(){
    return this.height += 12
}

Elephant.prototype.addTrick = function(trick){
    return tricksArray.push(trick)
}

Elephant.prototype.play = function(){
    return this.tricksArray[Math.floor(Math.random() * this.tricksArray.length)]
}

let jumbo = new Elephant("Jumbo", 36, ["fly", "flip", "wave"])
console.log(jumbo.trumpet())
console.log(jumbo.grow())
console.log(jumbo)
console.log(jumbo.play())

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];


