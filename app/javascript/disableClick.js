const disableClick = function(event) {
  event.preventDefault();
};

const bindDisableClick = function(element) {
  element.addEventListener("click", disableClick);
};

document.querySelectorAll(".disable-click").forEach(bindDisableClick);
