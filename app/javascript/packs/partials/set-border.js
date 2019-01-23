
function setBorder() {
  const blocks = Array.from(document.getElementsByClassName('nascholing-data'));
  console.log(blocks);
  blocks.forEach(function(b) {
      if (b.innerHTML.trim().length === 0 ) {
        console.log("empty");
        b.classList.remove('box-border');
      }
      console.log(b.innerHTML);
      console.log(b.innerHTML.length);
    }
  );
}

export {setBorder};



