const exp_filter = document.getElementById('expertise_filter');
exp_filter.addEventListener("change", expertiseFilter);
console.log(exp_filter);

function expertiseFilter() {
  const path = document.getElementById('expertise_filter').dataset.model;
  const expertise = exp_filter.value;
  // console.log(expertise);
  var AUTH_TOKEN = $('meta[name=csrf-token]').attr('content');
  window.location = '/'+ path +'?search[expertise_name]=' + expertise;
}

console.log('expertiseFilter loaded');

export { expertiseFilter };
