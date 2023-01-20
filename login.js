const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const signUpBtn = document.getElementById('signupbtn');
const signInBtn = document.getElementById('signinbtn');
const container = document.getElementById('container');
const signupName = document.getElementById('signupname');
const signupEmail = document.getElementById('signupemail');
const signupPassword = document.getElementById('signuppassword');
const loginEmail = document.getElementById('loginemail');
const loginPassword = document.getElementById('loginpassword');

signUpButton.addEventListener('click', () => {
	container.classList.add("right-panel-active");
});

signInButton.addEventListener('click', () => {
	container.classList.remove("right-panel-active");
});

var dict = {}

function validateSignUp(){
	dict[signupEmail.value] = signupPassword.value;
	console.log(dict); 	
}

function validateLogin(){
	if(dict[loginEmail.value] === loginPassword.value)
		alert("Success");
	else
		alert("retry");
}