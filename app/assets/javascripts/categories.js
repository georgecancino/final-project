// app/assets/javascripts/categories.js

document.addEventListener('DOMContentLoaded', function() {
    const categoryLinks = document.querySelectorAll('.category-link');
  
    categoryLinks.forEach(link => {
      link.addEventListener('click', (event) => {
        event.preventDefault();
        const category = link.textContent.trim();
        filterProductsByCategory(category);
      });
    });
  
    function filterProductsByCategory(category) {
    }
  });
  