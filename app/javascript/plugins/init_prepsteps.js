const moveCarousel = (e) => {
  const direction = getDirection(e);
  document.getElementById(direction).click();
}

function getDirection(e) {

  e = e || window.event;
  let direction = null;

  if (e.keyCode == '37') {
    // left arrow
    direction = "left"
  }
  else if (e.keyCode == '39') {
    // right arrow
    direction = "right"
  }

  return direction;
}

document.addEventListener("keyup", (event) => moveCarousel(event));
