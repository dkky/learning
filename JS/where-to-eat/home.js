var startbutton = document.getElementById("startButton");
var stopbutton = document.getElementById("stopButton");
var addbutton = document.getElementById("addButton");


var choices = []

addbutton.addEventListener("click", addChoices);

    var ul = document.createElement('ul')
    document.getElementById("tray").appendChild(ul)
function addChoices() {
  if (choices.length <= 10) {
    var choice = document.getElementById("myText").value 
    choices.push(choice);

    // choicesLength = choices.length;
    // text = "<ul>";
    // for (i = 0; i < choicesLength; i++) {
        // text += "<li>" + choices[i] + "</li>";
      var li = document.createElement('li');
      li.innerHTML= choice;
      ul.appendChild(li);

    // }
    // document.getElementById("tray").innerHTML = text;
  }
}

startbutton.addEventListener("click", random);

  // var choices = ["Mcdonald", "Mamak", "Frenchino", "Bla Bla"];
function random() {
  if (!choices.length > 0) {
    document.getElementById("demo").firstElementChild.innerHTML = "Please add your favourites first"
  } else {
    var choice = choices[Math.floor(Math.random()*choices.length)]
    document.getElementById("demo").firstElementChild.innerHTML = choice
    timeout = setTimeout(random, 200);
  }
}

stopbutton.addEventListener("click", stop);

function stop() {
  clearTimeout(timeout)
}



// if (button) {
//   button.addEventListener("click", addChoices);
// }

// function addChoices() {
//   if (choices.length <= 10) {
//     choices.push(document.getElementById("myText").value);
//     document.getElementById("demo").textContent = choices;
//   }
// };
