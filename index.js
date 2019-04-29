async function load() {
  const response = await (await fetch('/response')).text();
  const responseDiv = document.createElement('div');
  responseDiv.innerHTML = response;
  document.body.appendChild(responseDiv);
  const date = await (await fetch('/date')).text();
  const dateDiv = document.createElement('div');
  dateDiv.innerHTML = `Last updated: ${date}`;
  document.body.appendChild(dateDiv);
}

load();
