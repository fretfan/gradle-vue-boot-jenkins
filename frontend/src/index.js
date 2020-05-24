function component() {
  const element = document.createElement('div');
  element.innerHTML = 'static frontend';
  return element;
}

document.body.appendChild(component());