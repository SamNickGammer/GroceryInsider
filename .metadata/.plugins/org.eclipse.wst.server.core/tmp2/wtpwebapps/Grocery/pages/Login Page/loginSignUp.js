const loginSignUpBtn = document.querySelector('#loginBtn');;
const nameField = document.querySelector('#nameField');
const phoneField = document.querySelector('#phoneField');
const passwordField = document.querySelector('#passwordField');
const newAccBtn = document.querySelector('#newAccBtn');
const loginTxt = document.querySelector('#loginTxt');

newAccBtn.addEventListener('click', () => {
  if (loginSignUpBtn.textContent == 'Login') {
	nameField.value = null;
	phoneField.value = null;
	passwordField.value = null;
    showElem(nameField);
    loginSignUpBtn.innerHTML = 'Signup';
    newAccBtn.innerHTML = 'Already have an account? Login.';
    loginTxt.innerHTML = 'Signup';
  } else {
	nameField.value = null;
	phoneField.value = null;
	passwordField.value = null;
    hideElem(nameField);
    loginSignUpBtn.innerHTML = 'Login';
    newAccBtn.innerHTML = 'New here? Create an account.';
    loginTxt.innerHTML = 'Login';
  }
});

function showElem(elem) {
  elem.style.display = 'block';
  elem.previousSibling.previousSibling.style.display = 'block';
}

function hideElem(elem) {
  elem.style.display = 'none';
  elem.previousSibling.previousSibling.style.display = 'none';
}

