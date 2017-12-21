const tabs = document.querySelectorAll(".tab");
if (tabs) {
tabs.forEach(function(tab){
  tab.addEventListener("click", function(event) {
    document.querySelector(".active").classList.remove("active");
    event.currentTarget.classList.add("active");
    });
});
}

const inbox = document.querySelector(".inbox-accomodation");
if (inbox) {
  document.querySelector(".inbox-accomodation").style.display = 'none';
}

const tabTravel = document.querySelector(".tab-travel");
if (tabTravel) {
  document.querySelector(".tab-travel").addEventListener("click", function(event) {
    document.querySelector(".inbox-travel").style.display = 'block';
    document.querySelector(".inbox-accomodation").style.display = 'none';
  });
}

const tabAccomodation = document.querySelector(".tab-accomodation");
if (tabAccomodation) {
  document.querySelector(".tab-accomodation").addEventListener("click", function(event) {
    document.querySelector(".inbox-travel").style.display = 'none';
    document.querySelector(".inbox-accomodation").style.display = 'block';
  });
}
