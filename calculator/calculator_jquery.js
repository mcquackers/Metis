$(function(){
  $("#theForm").submit(calculate);
});
//anonymous function in '$'form makes it only occur on page load completion
$("#theForm").submit(calculate);
function calculate(){
  var operator = $("#middle").val();
  var first = Number($("#left").val());
  var second = Number($("#right").val());
  var resultElement = $("#results");
  var result;
  if(operator === "+"){
    result = first + second; }
  else if(operator === "-"){
    result = first - second; }
  else if(operator === "/"){
    result = first / second;}
  else if(operator === "*"){
    result = first * second; }
  else if(operator === "**"){
    result = Math.pow(first, second);}
  else { 
    result = "Hey, you can't do that!  I'm telling mom!";
  }
  resultElement.text(result);
  return false;
}

