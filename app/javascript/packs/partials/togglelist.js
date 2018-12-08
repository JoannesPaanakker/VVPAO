// toggle user index view
const toggle_list = document.getElementById('switch');
toggle_list.addEventListener('click', toggleList);

function toggleList() {
  const list = document.getElementById('list');
  const cards = document.getElementById('cards');
  if (list.style.display === 'block') {
    document.getElementById('switch').innerHTML = "lijstweergave"
    list.style.display = 'none';
    cards.style.display = 'block';
    console.log("list.style.display === block");
  } else {
    document.getElementById('switch').innerHTML = "cards weergave"
    list.style.display = 'block';
    cards.style.display = 'none';
  }
  console.log('toggled');
}

console.log('toggleList loaded')


export { toggleList };
