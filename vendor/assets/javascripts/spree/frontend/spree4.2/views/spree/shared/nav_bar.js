$(document).ready(function() {
  var searchIcons = document.querySelectorAll('#nav-bar .search-icons')[0]
  var searchDropdown = document.getElementById('search-dropdown')

  if (searchIcons !== undefined) {
    searchIcons.addEventListener(
      'click',
      toggleSearchBar,
      false
    )
  }

  function toggleSearchBar() {
    if (searchDropdown.classList.contains('shown')) {
      // document.querySelector('.header').classList.remove('above-overlay')
      document.getElementById('overlay').classList.remove('above-overlay')
      searchDropdown.classList.remove('shown')
      $(".navbar-right-search-menu #search-dropdown").hide()
      // searchDropdown.hide();
    } else {

      $(".navbar-right-search-menu #search-dropdown").show();
      $(".navbar-right-search-menu #search-dropdown").addClass("shown")
      // document.querySelector('.header').classList.add('above-overlay')
      document.getElementById('overlay').classList.add('above-overlay')
      searchDropdown.classList.add('shown')
      $(".navbar-right-search-menu #search-dropdown").show();
      // searchDropdown.show();
      document.querySelector('#search-dropdown input').focus()
    }
  }


})
