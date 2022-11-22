function mysteryScoping1(){
    var x = "out of block";

    if(true){
        var x = "In block"
        console.log(x);
    }

    console.log(x)

}



function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}



// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// console.log(mysteryScoping3(true))


function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}


// function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }

// console.log(mysteryScoping5(true))


function madlibs(verb, adj, noun){
    return `We shall ${verb} the ${adj} ${noun}`
}

console.log(madlibs("run", "quick", "spider"))


function isString(sent, string){
    if (sent.includes(string)){
        return true
    } else{
        return false
    }
}

console.log(isString("time to program", "time"))

console.log(isString("Jump for joy", "joys"))

function fizzbuzz(arr){
    let fizz = []
    for(let i= 0; i < arr.length; i++){
        if (arr[i]%3 === 0 || arr[i]%5 == 0){
            fizz.push(arr[i])
        }
    }

    return fizz
}


console.log(fizzbuzz([2,3,5,6,7,8,9,10]))


function isPrime(num){
    var k = true
    for(let i=2; i < num; i++){
        if (num % i === 0){
            var k = false
        }
    }

    return k
}

console.log(isPrime(5))


function sumOfNPrimes(num){

    
    
    let sum = 0
    for(let i = 2; i < num+1 ; i++ ){
      
        if (isPrime(i)){
            sum += i
        }

    }
     console.log(sum) 
    
}

console.log(sumOfNPrimes(3))