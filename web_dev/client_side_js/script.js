console.log("The script is running!");

function addBlueBorder(event) {
  event.target.style.border = "5px solid blue"
}
function addRedBorder(event) {
  event.target.style.border = "20px solid red"
}
function addBlackBorder(event) {
  event.target.style.border = "5px solid black"
}

function changeColorToRed(event) {
  event.target.style.color = "red";
}

var gif = document.getElementById("catgif");

gif.addEventListener("mouseover", addBlueBorder);
gif.addEventListener("click", addRedBorder);
gif.addEventListener("mouseout", addBlackBorder);


var button = document.getElementById("button");
button.addEventListener("dblclick", changeColorToRed)