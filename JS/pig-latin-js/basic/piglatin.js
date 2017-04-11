// var button = document.getElementById("myBtn");
// var vowels = ["a","e","i","o","u"]

// if (button){
// 	debugger
// 	button.addEventListener("click", function(){ alert("Hello World!"); }, false);
// }


// if (button){
// 	button.addEventListener("click", piglatin, true)
// }

function piglatin() {
	var word = document.getElementById("myText").value;

	if (!(/^[aeiou]/i.test(word))) {
    var output = word.replace(/([^aeiou]+)([aeiou].*)/, "$2$1ay");
  }
  else{	  	
		var output = word +"ay";
  }
	document.getElementById("demo").value = output;
}

// function typingtext() {
//   document.getElementById("titletext").className = "";
//   document.getElementById("titletext").className = "moving"
// }

// setInterval(typingtext, 500)

