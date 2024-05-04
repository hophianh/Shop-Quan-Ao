// init Isotope
var $grid = $('.collection-list').isotope({
  // options
});
// filter items on button click
$('.filter-button-group').on( 'click', 'button', function() {
  var filterValue = $(this).attr('data-filter');
  resetFilterBtns();
  $(this).addClass('active-filter-btn');
  $grid.isotope({ filter: filterValue });
});

var filterBtns = $('.filter-button-group').find('button');
function resetFilterBtns(){
  filterBtns.each(function(){
    $(this).removeClass('active-filter-btn');
  });
}
$("ul li:nth-child(1)").click(function(){
  $(".left-set img:nth-child(2)").animate({
    opacity: 1
  })
})

$("ul li:nth-child(2)").click(function(){
  $(".left-set img:nth-child(2)").animate({
    opacity: 0
  })
})
// // show card
// let openShopping = document.querySelector('.shopping');
// let closeShopping = document.querySelector('.closeshopping');
// let list = document.querySelector('.list');
// let listCard = document.querySelector('.listcard');
// let body = document.querySelector('body');
// let quantity = document.querySelector('.quantity')

// openShopping.addEventListener('click',() =>{
//   body.classList.add('active');
// })
// closeShopping.addEventListener('click',() =>{
//   body.classList.remove('active');
// })

// let products = [
//   {
//     id : 1,
//     name : 'PRODUCT NAME 1'
//     image : '1.PNG'
//     PRICE : 3000001
//   },
//   {
//     id : 2,
//     name : 'PRODUCT NAME 2'
//     image : '2.PNG'
//     PRICE : 3000002
//   },
//   {
//     id : 3,
//     name : 'PRODUCT NAME 3'
//     image : '3.PNG'
//     PRICE : 3000003
//   },
//   {
//     id : 4,
//     name : 'PRODUCT NAME 4'
//     image : '4.PNG'
//     PRICE : 3000004
//   },
//   {
//     id : 5,
//     name : 'PRODUCT NAME 5'
//     image : '5.PNG'
//     PRICE : 3000005
//   },
//   {
//     id : 6,
//     name : 'PRODUCT NAME 6'
//     image : '5.PNG'
//     PRICE : 3000006
//   },
// ];
// let listCards = [];
// function intiapp(){
//   products.forEach((value,key)=>{
//     let newDiv = document.createElement('div');
//     newDiv.innerHTML = `
    
//     `
//   })
// }

