function sayGoodbye(){
        console.log("Au Revoir");
        return false;
      }
function printLeftValue(){
        console.log(document.getElementById("left").value);
        return false;
      }
function printSum(){
        var operator = document.getElementById("middle").value;
        var first = Number(document.getElementById("left").value);
        var second = Number(document.getElementById("right").value);
        if(operator === "+"){
        var result = first + second; }
        else if(operator === "-"){
          var result = first - second; }
        else if(operator === "/"){
          var result = first / second;}
        else if(operator === "*"){
          var result = first * second; }
        else if(operator === "**"){
          var result = Math.pow(first, second);}
        else { 
          var result = "Hey, you can't do that!  I'm telling mom!";
        }
document.getElementById("results").innerText= result;

return false;
}

