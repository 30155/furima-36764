
function calc () {
  const priceInput = document.getElementById("item-price");
  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
    const commission = document.getElementById("add-tax-price");
    const tax = Math.floor(inputValue * 0.1);
    commission.innerHTML = tax;
    const profit = document.getElementById("profit");
    profit.innerHTML = (inputValue - tax);
  }); 
};

window.addEventListener('load', calc);