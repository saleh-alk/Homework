document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };



  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  const favoritesForm = document.getElementById("favorites")
  favoritesForm.addEventListener("submit", event => {
    const favoriteInput = document.getElementsByClass("favorite-input")
    const favoriteName = favoriteInput.value;
    favoriteInput.value = '';

    const ul = document.getElementById('sf-places');
    const li = document.createElement('li');
    li.textContent = favoriteName;
    ul.appendChild(li);
  })

  // --- your code here!



  // adding new photos

  // --- your code here!



});
