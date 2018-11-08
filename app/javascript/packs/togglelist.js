// toggle user index view
const toggle_list = document.getElementById('switchtolist');
toggle_list.addEventListener('click', toggleList);

function toggleList() {
  const list = document.getElementById('list');
  const cards = document.getElementById('cards');
  if (list.style.display === 'block') {
    document.getElementById('switchtolist').innerHTML = "lijstweergave"
    list.style.display = 'none';
    cards.style.display = 'block';
  } else {
    document.getElementById('switchtolist').innerHTML = "cardsweergave"
    list.style.display = 'block';
    cards.style.display = 'none';
  }
  console.log('toggled');
}

console.log('toggleList loaded')


export { toggleList };
