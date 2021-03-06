const sideBarBody = document.querySelector('.sideBarBody');
const listOfName = document.querySelector('.listOfName');
const listofitems = window.data;
console.log("list: ",listofitems)
var url = new URL(window.location.href);
var catoragy = url.searchParams.get('c');
var subCatogry = url.searchParams.get('s');
var querry = url.searchParams.get("q");

console.log(catoragy, querry);



sidebarData.forEach((item) => {
  if (item.nameOfHead === catoragy) {
    sideBarBody.innerHTML = `
      <div class="imageProductPageTitleImage">
        <img src="${item.imageUrl}" alt="">
    </div>
    <div class="imageProductPageTitle">
        <h3>${item.nameOfHead}</h3>
    </div>
    <div class="listOfName">
        <ul>
        ${Object.values(item.listSidebar)
          .map((value) => {
            if (value === subCatogry) {
              showDataSets(subCatogry);
              return `<li class="listSubCatorgy active">${value}</li>`;
            }
            return `<li class="listSubCatorgy">${value}</li>`;
          })
          .join('')}
        </ul>
    </div>
      `;
  }
  else{
	showDataSets(querry.charAt(0).toUpperCase() + querry.slice(1).toLowerCase())
}
});

const listSubCatorgy = document.querySelectorAll('.listSubCatorgy');
listSubCatorgy.forEach((item) => {
  item.addEventListener('click', (e) => {
    listSubCatorgy.forEach((item) => {
      item.classList.remove('active');
    });
    e.target.classList.add('active');
    window.location.href = `index.jsp?c=${catoragy}&s=${item.innerHTML}&q=${item.innerHTML}`;
    showDataSets(item.innerHTML);
  });
});


function showDataSets(itemName) {
	console.log("item",itemName)
  const bodyFlexMain = document.querySelector('.bodyFlexMain');
  bodyFlexMain.innerHTML = `
    <div class="headingCnt">
        <h1>${itemName}</h1>
        <h5> (Showing ${listofitems.length} products )</h5>
    </div>
    <div class="bodyItem">
        ${listofitems
          .map((item) => {
            return `<div class="itembodysingleItem">
            <div class="singleBodyImage" item='${JSON.stringify(item)}'>
                <img src="../../assets/storageImage/${item.productID}.webp" alt="">
            </div>
            <div class="singleBodyTitle">
                <h5>${item.productName.slice(0,17)}...</h5>
                <div class="priceDesc">
                    <h2>??? ${~~(item.productPrice - (item.productPrice * item.productDiscount / 100))}</h2>
                    <h3>??? ${item.productPrice}</h3>
                    <h5>${item.productDiscount}% off</h5>
                </div>
            </div>
            <div class="singleBodyButton">
                <button class="btnaddtocart">Add to Cart</button>
            </div>
        </div>`;
          })
          .join('')}
    </div>
      `;
}



// const userAccountImage = document.querySelector('.userAccountImage');
// const loginPopUpCont = document.querySelector('.loginPopUpCont');
// const loginPopupPP = document.querySelector('.loginPopupPP');

// userAccountImage.onclick = function () {
//   loginPopUpCont.style.display = 'block';
//   document.body.classList.add('stop-scrolling');
// };

// window.onclick = function (event) {
//   if (event.target == loginPopupPP) {
//     loginPopUpCont.style.display = 'none';
//     document.body.classList.remove('stop-scrolling');
//   }
// };

window.onclick = function (event) {
  console.log(event.target);
  if (event.target === overlay) {
    profilePopupIFrame.style.display = 'none';
    productIFrame.style.display = 'none';
    overlay.style.display = 'none';
    document.body.classList.remove('stop-scrolling');
  }
};

const singleBodyImage = document.querySelectorAll('.singleBodyImage');
singleBodyImage.forEach((item) => {
  item.addEventListener('click', (e) => {
    console.log(JSON.parse(item.getAttribute('item')));
    console.log("ITem",item);
    productIFrame.src = `../ProductPagePopup/productPopup.jsp?pid=${JSON.parse(item.getAttribute('item')).productID}`
    productIFrame.style.display = 'block';
    overlay.style.display = 'block';
    document.body.classList.add('stop-scrolling');
  });
});
