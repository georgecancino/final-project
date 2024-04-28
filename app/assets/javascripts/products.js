document.addEventListener('DOMContentLoaded', function() {
    function sortProductsByName(order) {
      const productList = document.querySelector('tbody');
      const sortedProducts = Array.from(productList.querySelectorAll('tr'))
        .sort((a, b) => {
          const nameA = a.cells[0].textContent.toLowerCase();
          const nameB = b.cells[0].textContent.toLowerCase();
          if (order === 'asc') {
            return nameA.localeCompare(nameB);
          } else {
            return nameB.localeCompare(nameA);
          }
        });
      productList.innerHTML = '';
      sortedProducts.forEach(product => productList.appendChild(product));
    }

    function sortProductsByPrice(order) {
      const productList = document.querySelector('tbody');
      const sortedProducts = Array.from(productList.querySelectorAll('tr'))
        .sort((a, b) => {
          const priceA = parseFloat(a.cells[1].textContent.replace(/\$/g, ''));
          const priceB = parseFloat(b.cells[1].textContent.replace(/\$/g, ''));
          if (order === 'asc') {
            return priceA - priceB;
          } else {
            return priceB - priceA;
          }
        });
      productList.innerHTML = '';
      sortedProducts.forEach(product => productList.appendChild(product));
    }
  
    const productNameHeader = document.querySelector('th:nth-child(1)');
    let nameSortOrder = 'asc';
    productNameHeader.addEventListener('click', function() {
      if (nameSortOrder === 'asc') {
        sortProductsByName('desc');
        nameSortOrder = 'desc';
      } else {
        sortProductsByName('asc');
        nameSortOrder = 'asc';
      }
    });
  
    const productPriceHeader = document.querySelector('th:nth-child(2)');
    let priceSortOrder = 'asc';
    productPriceHeader.addEventListener('click', function() {
      if (priceSortOrder === 'asc') {
        sortProductsByPrice('desc');
        priceSortOrder = 'desc';
      } else {
        sortProductsByPrice('asc');
        priceSortOrder = 'asc';
      }
    });
  });
  