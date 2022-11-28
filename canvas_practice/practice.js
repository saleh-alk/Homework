document.addEventListener("DOMContentLoaded", function(){
    
});

var canvas = document.getElementById("mycanvas")
var ctx = canvas.getContext("2d")
ctx.fillStyle = "red"
ctx.fillRect(10,10,500,500)

ctx.beginPath()
ctx.arc(100, 75, 20, 0, 2 * Math.PI)
ctx.strokeStyle = "green"
ctx.stroke()