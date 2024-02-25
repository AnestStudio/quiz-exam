const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

sign_up_btn.addEventListener("click", () => {
  container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => {
  container.classList.remove("sign-up-mode");
});

// Theme
let theme = localStorage.getItem('data-theme');
const checkboxSignIn = document.getElementById("switch-sign-in");
const checkboxSignUp = document.getElementById("switch-sign-up");

const changeThemeToDark = () => {
  document.documentElement.setAttribute("data-theme", "dark");
  localStorage.setItem("data-theme", "dark");
  checkboxSignIn.checked = true;
  checkboxSignUp.checked = true;
}

const changeThemeToLight = () => {
  document.documentElement.setAttribute("data-theme", "light");
  localStorage.setItem("data-theme", 'light');
  checkboxSignIn.checked = false;
  checkboxSignUp.checked = false;
}

if (theme === null) {
  theme = 'dark';
}

if (theme === 'dark') {
  changeThemeToDark();
}

if (theme === 'light') {
  changeThemeToLight();
}

checkboxSignIn.addEventListener('change', () => {
  let theme = localStorage.getItem('data-theme');
  if (theme === 'dark') {
    changeThemeToLight();
  } else {
    changeThemeToDark();
  }
});

checkboxSignUp.addEventListener('change', () => {
  let theme = localStorage.getItem('data-theme');
  if (theme === 'dark') {
    changeThemeToLight();
  } else {
    changeThemeToDark();
  }
});