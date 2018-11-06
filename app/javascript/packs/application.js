import "bootstrap";
// toggle user indes view
const toggle_list = document.getElementById("switchtolist");
toggle_list.addEventListener("click", toggleList);

function toggleList() {
  const list = document.getElementById("list");
  const cards = document.getElementById("cards");
  if (list.style.display === 'block') {
    list.style.display = 'none';
    cards.style.display = 'block';
  } else {
    list.style.display = 'block';
    cards.style.display = 'none';
  }
  console.log("toggled");
}

console.log('toggleList loaded')
