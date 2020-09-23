$(document).ready(function() {
    $( "#overlay" ).click(function() {
        // document.querySelector('.header').classList.remove('above-overlay')
        document.getElementById('overlay').classList.remove('above-overlay')
        $(".navbar-right-search-menu #search-dropdown").removeClass("shown")
        // searchDropdown.classList.remove('shown')
        // $(".navbar-right-search-menu #search-dropdown").hide();
    });
});