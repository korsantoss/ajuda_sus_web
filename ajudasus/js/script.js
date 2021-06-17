var menu = document.querySelector('.menu');

var menuLinks = document.querySelector('.menu-links');

menu.addEventListener('click', () => {
  menu.classList.toggle('open');
  menuLinks.classList.toggle('show');
})