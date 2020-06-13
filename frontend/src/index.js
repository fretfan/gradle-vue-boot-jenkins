function component() {
  const element = document.createElement('div');
  element.innerText = 'before';
  element.id = 'text-div';
  element.style.backgroundColor = 'yellow';
  return element;
}

function button() {
  const element = document.createElement('button');
  element.innerHTML = 'Click me';
  element.id = 'the-button';
  element.onclick = (ev) => {
    const el = document.getElementById('text-div');
    el.innerText = 'after';
    el.style.backgroundColor = 'red';
  };
  return element;
}

document.body.appendChild(component());
document.body.appendChild(button());