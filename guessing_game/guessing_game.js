$(function(){
  $("#dog").click(dog);
  $("#cat").click(cat);
  $("#navigator").click(step);
});
var imgArray = [
{answer: "dog",
  url: "http://www.dogbreedinfo.com/images24/PitbullDogDogsChevy3YearsOld.jpg"},
{answer: "cat",
  url: "http://animalia-life.com/data_images/cat/cat2.jpg"},
{answer: "dog",
  url: "http://www.hoax-slayer.com/images/jerky-dog.jpg"}
]
var picNumber = 0;
var correctAnswer = imgArray[picNumber]["answer"];
var correctGuesses = 0;
var totalGuesses = 0;

function dog() {
  if (correctAnswer === "dog"){
    $("#result").text("Correct!");
    correctGuesses++;
    console.log("Correct!");
  } else {
    $("#result").text("Wrong!");
    console.log("Wrong!");
  }
  totalGuesses++;
  step();

}
function cat() {
  if (correctAnswer === "cat"){
    $("#result").text("Correct!");
    correctGuesses++;
    console.log("Correct!");
  } else {
    $("#result").text("Wrong!");
    console.log("Wrong!");
  }
  totalGuesses++;
  step();
}

function step(){
  $("#correctGuesses").text("Correct Guesses:" + correctGuesses);
  $("#totalGuesses").text("Total Guesses: " + totalGuesses);
  $("#navigator").text("Next");
  $("#display").attr("src", imgArray[picNumber]["url"]);
  correctAnswer = imgArray[picNumber]["answer"];
  picNumber++;
  }

