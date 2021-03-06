const productPagePopup = document.querySelector(".productPagePopup");
const productDetails = window.prodet;

console.log("Prod: ",productDetails);
if(productDetails !== null){
	productPagePopup.innerHTML = `
		<div class="productImagesContainer">
            <img class="productImages" height="80" width="80" src="../../assets/storageImage/${productDetails[0].productID}.webp">
        </div>
        <div class="focusedImageContainer">
            <div class="focusedImage">
                <img class="productImagesFocused" src="../../assets/storageImage/${productDetails[0].productID}.webp">
            </div>
            <div class="productButtonCont">  
                <button class="addToCartButton pb">Add to Cart</button>
                <button class="buyNowButton pb">Buy Now</button>
            </div>
        </div>
        <div class="productDetailsContainer">
            <div class="productName"><span>${productDetails[0].productName}</span></div>
            <div class="ratingRow">
                <span class="ratingRowBox">${productDetails[0].productRating}</span>
                <span class="ratingStarsContainer">
                    <span id="ratingMask"></span>
                    <svg class="ratingStars" id="ratingStarOne" xmlns="http://www.w3.org/2000/svg" width="23"
                        height="23" viewBox="0 0 36.306 35">
                        <path id="Path_21" data-name="Path 21"
                            d="M52.143,29.19a2.657,2.657,0,0,0-2.366-1.847l-9.625-.664-3.565-8.993A2.657,2.657,0,0,0,34.124,16h0a2.657,2.657,0,0,0-2.463,1.685l-3.63,9.042-9.56.616a2.674,2.674,0,0,0-2.366,1.847,2.722,2.722,0,0,0,.843,2.933L24.3,38.345l-2.187,8.6a3,3,0,0,0,1.134,3.176,2.917,2.917,0,0,0,3.257.1l7.6-4.812h.032l8.183,5.169a2.609,2.609,0,0,0,1.41.421,2.674,2.674,0,0,0,2.56-3.37l-2.317-9.414L51.3,32.123A2.722,2.722,0,0,0,52.143,29.19Z"
                            transform="translate(-15.972 -16)" fill="#ffeb78" />
                    </svg>
                    <svg class="ratingStars" id="ratingStarTwo" xmlns="http://www.w3.org/2000/svg" width="23"
                        height="23" viewBox="0 0 36.306 35">
                        <path id="Path_21" data-name="Path 21"
                            d="M52.143,29.19a2.657,2.657,0,0,0-2.366-1.847l-9.625-.664-3.565-8.993A2.657,2.657,0,0,0,34.124,16h0a2.657,2.657,0,0,0-2.463,1.685l-3.63,9.042-9.56.616a2.674,2.674,0,0,0-2.366,1.847,2.722,2.722,0,0,0,.843,2.933L24.3,38.345l-2.187,8.6a3,3,0,0,0,1.134,3.176,2.917,2.917,0,0,0,3.257.1l7.6-4.812h.032l8.183,5.169a2.609,2.609,0,0,0,1.41.421,2.674,2.674,0,0,0,2.56-3.37l-2.317-9.414L51.3,32.123A2.722,2.722,0,0,0,52.143,29.19Z"
                            transform="translate(-15.972 -16)" fill="#ffeb78" />
                    </svg>
                    <svg class="ratingStars" id="ratingStarThree" xmlns="http://www.w3.org/2000/svg" width="23"
                        height="23" viewBox="0 0 36.306 35">
                        <path id="Path_21" data-name="Path 21"
                            d="M52.143,29.19a2.657,2.657,0,0,0-2.366-1.847l-9.625-.664-3.565-8.993A2.657,2.657,0,0,0,34.124,16h0a2.657,2.657,0,0,0-2.463,1.685l-3.63,9.042-9.56.616a2.674,2.674,0,0,0-2.366,1.847,2.722,2.722,0,0,0,.843,2.933L24.3,38.345l-2.187,8.6a3,3,0,0,0,1.134,3.176,2.917,2.917,0,0,0,3.257.1l7.6-4.812h.032l8.183,5.169a2.609,2.609,0,0,0,1.41.421,2.674,2.674,0,0,0,2.56-3.37l-2.317-9.414L51.3,32.123A2.722,2.722,0,0,0,52.143,29.19Z"
                            transform="translate(-15.972 -16)" fill="#ffeb78" />
                    </svg>
                    <svg class="ratingStars" id="ratingStarFour" xmlns="http://www.w3.org/2000/svg" width="23"
                        height="23" viewBox="0 0 36.306 35">
                        <path id="Path_21" data-name="Path 21"
                            d="M52.143,29.19a2.657,2.657,0,0,0-2.366-1.847l-9.625-.664-3.565-8.993A2.657,2.657,0,0,0,34.124,16h0a2.657,2.657,0,0,0-2.463,1.685l-3.63,9.042-9.56.616a2.674,2.674,0,0,0-2.366,1.847,2.722,2.722,0,0,0,.843,2.933L24.3,38.345l-2.187,8.6a3,3,0,0,0,1.134,3.176,2.917,2.917,0,0,0,3.257.1l7.6-4.812h.032l8.183,5.169a2.609,2.609,0,0,0,1.41.421,2.674,2.674,0,0,0,2.56-3.37l-2.317-9.414L51.3,32.123A2.722,2.722,0,0,0,52.143,29.19Z"
                            transform="translate(-15.972 -16)" fill="#ffeb78" />
                    </svg>
                    <svg class="ratingStars" id="ratingStarFive" xmlns="http://www.w3.org/2000/svg" width="23"
                        height="23" viewBox="0 0 36.306 35">
                        <path id="Path_21" data-name="Path 21"
                            d="M52.143,29.19a2.657,2.657,0,0,0-2.366-1.847l-9.625-.664-3.565-8.993A2.657,2.657,0,0,0,34.124,16h0a2.657,2.657,0,0,0-2.463,1.685l-3.63,9.042-9.56.616a2.674,2.674,0,0,0-2.366,1.847,2.722,2.722,0,0,0,.843,2.933L24.3,38.345l-2.187,8.6a3,3,0,0,0,1.134,3.176,2.917,2.917,0,0,0,3.257.1l7.6-4.812h.032l8.183,5.169a2.609,2.609,0,0,0,1.41.421,2.674,2.674,0,0,0,2.56-3.37l-2.317-9.414L51.3,32.123A2.722,2.722,0,0,0,52.143,29.19Z"
                            transform="translate(-15.972 -16)" fill="#ffeb78" />
                    </svg>
                </span>
                <span class="ratingText">12,475 Ratings & 1094 Reviews</span>
            </div>
            <div class="priceText">
                <span id="actualPriceText">${~~(productDetails[0].productPrice - (productDetails[0].productPrice * productDetails[0].productDiscount /100))}</span>
                <span id="mrpTxt">${productDetails[0].productPrice}</span>
                <span id="discountTxt">${productDetails[0].productDiscount}% off</span>
            </div>
            <div class="expiryTxt">
                <div style="margin: 5px">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 22.875 26.688">
                        <g id="Group_61" data-name="Group 61" transform="translate(-3.813)">
                            <path id="Path_19" data-name="Path 19"
                                d="M96.953,1.906h5.719a.953.953,0,0,0,0-1.906H96.953a.953.953,0,0,0,0,1.906Z"
                                transform="translate(-84.563)" fill="#ddd" />
                            <path id="Path_20" data-name="Path 20"
                                d="M43.438,32A11.437,11.437,0,1,0,54.875,43.437,11.437,11.437,0,0,0,43.438,32Zm5.4,7.4-4.718,4.718a.977.977,0,0,1-1.358,0,.965.965,0,0,1,0-1.358l4.718-4.718A.965.965,0,1,1,48.835,39.4Z"
                                transform="translate(-28.188 -28.187)" fill="#ddd" />
                        </g>
                    </svg>
                </div>
                <span style="width: 250px">Expiry Date ${productDetails[0].productExp}</span>
            </div>
            <div class="pinCheckContainer">
                <span style="font-size: 20px; font-weight: 500;">Delivery</span>
                <input id="pinInput" maxlength="6" type="text" placeholder="123456">
                <button id="pinChkBtn">Check</button>
            </div>
            <div class="quantitySelectContainer">
                <span style="font-size: 20px; font-weight: 500; margin-right: 30px">Quantity</span>
                <button class="quantitiesSelect">${productDetails[0].productWeight}</button>
            </div>
            <div class="sellerNameText">
                <span style="font-size: 20px; font-weight: 500; margin-right: 65px">Seller</span>
                <span id="sellerName">${productDetails[0].productSeller}</span>
                <span id="sellerRatingText" class="ratingRowBox">4</span>
            </div>
            <div style="display: flex; justify-content: flex-end; padding-right: 10px; margin-top: 30px;">
                <div class="more-info-button">
                    <span>More Info</span><svg xmlns="http://www.w3.org/2000/svg" width="50" height="40" fill="#009126"
                        viewBox="0 0 256 256">
                        <rect width="256" height="256" fill="none"></rect>
                        <line x1="40" y1="128" x2="216" y2="128" fill="none" stroke="#009126" stroke-linecap="round"
                            stroke-linejoin="round" stroke-width="24"></line>
                        <polyline points="144 56 216 128 144 200" fill="none" stroke="#009126" stroke-linecap="round"
                            stroke-linejoin="round" stroke-width="24"></polyline>
                    </svg>
                </div>
            </div>
        </div>
	`;
}

ratingStars = document.querySelectorAll('.ratingStars');
ratingMask = document.querySelector('#ratingMask');
function setRating(n){
    rating = 5-n;
    console.log(rating*26.6);
    ratingMask.style.width = (rating*26.6) + "px";
    ratingMask.style.left = (752 + (133 -  rating*26.6)) + "px";
}
setRating(4.4)