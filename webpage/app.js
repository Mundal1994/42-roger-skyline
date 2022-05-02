const loginForm = document.getElementById("login-form");
const loginButton = document.getElementById("login-form-submit");
const hintSubmit = document.getElementById("hint-submit");

loginButton.addEventListener("click", (e) => {
	e.preventDefault();
	const username = loginForm.username.value;
	const password = loginForm.password.value;

	if (username == "Hive" && password == "42") {
		window.location.href = 'google.html';
	} else {
		window.alert("Incorrect login.");
	}
});

hintSubmit.addEventListener("click", (e) => {
	window.alert("Too lazy to come up with a hint\nLogin: Hive\nPassword: 42");
});