$(window).on('load', function(){
  $('.grid').masonry({
    // options
    itemSelector: '.grid-item',
    columnWidth: '.grid-item'
  });
})
