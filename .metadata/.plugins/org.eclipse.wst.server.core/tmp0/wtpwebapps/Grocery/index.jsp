<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*, java.io.*" %>
<jsp:useBean id="obj" class="groceryDatabase.DB"></jsp:useBean>
<%! Connection conn=null;%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>The Groccery Store</title>
        <link rel="stylesheet" href="./style.css">
        <link rel="stylesheet" href="./pages/ShopingListPage/style.css">
        <link rel="stylesheet" href="./assets/CSS/popupStyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
            integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>

    <body>
        <div class="container">
            <div class="displayFlexCont">
                <div class="navBarContainer">
                    <section class="header navbar">
                        <div class="logoName">
                            <div class="logoSVG">
                                <img src="./assets/icons/Logo (2).svg" alt="">
                            </div>
                            <div class="logoTXT">The Grocery Store</div>
                        </div>
                        <div class="searchAndLocation">
                            <div class="searchBarCont">
                                <input type="text" class="searchBar" placeholder="Search" onkeydown="event.key == 'Enter'? window.location.href = 'pages/ShopingListPage/index.jsp?q='+this.value:''">
                                <i class="fas fa-search searchIcon"></i>
                            </div>
                        </div>
                        <div class="userAccountAndCart">
                            <div class="cartImage">
                                <img src="./assets/icons/cart.svg" alt="icon" class="cartIcon">
                                <h4 class="color_white mobile_disable">Cart</h4>
                            </div>
                            <div class="userAccountImage">
                                <i class="fa-regular fa-user"></i>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="bodyContainer">
                    <div class="bodyContFlex">
                        <div class="sideBar">
                            <div class="sideBarBody">
                                <ul class="sideBarList">
                                    <!-- <li class="liDropdown">
                                        <span>Essentials</span>
                                        <div class="dropdownCont">
                                            <ul>
                                                <li>
                                                    All
                                                </li>
                                                <li>
                                                    Dals & Pulses
                                                </li>
                                                <li>
                                                    Ghee & Oils
                                                </li>
                                                <li>
                                                    Atta & Flours
                                                </li>
                                                <li>
                                                    Masalas & Spices
                                                </li>
                                                <li>
                                                    Rice & Rice Products
                                                </li>
                                                <li>
                                                    Dry Fruits, Nuts & Seeds
                                                </li>
                                                <li>
                                                    Sugar, Jaggery & Salt
                                                </li>
                                            </ul>
                                        </div>
                                    </li>-->
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="bodyMain">
                        <section class="hero">
                            <div class="hero_image">
                                <div class="imagecontainment imagePrimaryHero">
                                    <div class="txtdta">
                                        all fresh and budget friendly, just for you!
                                    </div>
                                </div>
                                <div class="imagecontainment largeImagewidth">
                                    <div class="dataContCent secondCont">
                                        <div class="productDivHero">
                                            <div class="itemListProduct">
                                                <img src="./assets/image/img1.png" alt="" class="listItem">
                                                <div class="itemListProductName">
                                                    <h4>10 KG</h4>
                                                    <p class="fairDiscount">&#8377; 100 OFF</p>
                                                </div>
                                            </div>
                                            <div class="itemListProduct">
                                                <img src="./assets/image/img2.png" alt="" class="listItem"
                                                    style="width: 83px;">
                                                <div class="itemListProductName">
                                                    <h4>10 KG</h4>
                                                    <p class="fairDiscount">&#8377; 100 OFF</p>
                                                </div>
                                            </div>
                                            <div class="itemListProduct">
                                                <img src="./assets/image/img3.png" alt="" class="listItem"
                                                    style="width: 105px;">
                                                <div class="itemListProductName">
                                                    <h4>10 KG</h4>
                                                    <p class="fairDiscount">&#8377; 100 OFF</p>
                                                </div>
                                            </div>
                                            <div class="itemListProduct">
                                                <img src="./assets/image/img4.png" alt="" class="listItem"
                                                    style="width: 105px;">
                                                <div class="itemListProductName">
                                                    <h4>10 KG</h4>
                                                    <p class="fairDiscount">&#8377; 100 OFF</p>
                                                </div>
                                            </div>
                                            <div class="itemListProduct">
                                                <img src="./assets/image/img5.png" alt="" class="listItem"
                                                    style="width: 120px;">
                                                <div class="itemListProductName">
                                                    <h4>10 KG</h4>
                                                    <p class="fairDiscount">&#8377; 100 OFF</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </section>
                        <section class="famProduct">
                            <h1>Top Deal Made for you</h1>
                            <div class="productMnd">
                                <div class="productMnd">
                                    <div class="productDes">
                                        <div class="productDes_heading">Shop for 600 to get discount</div>
                                        <div class="productDes_subheading">
                                            <div class="productDes_imagecont">
                                                <img src="./assets/image/dairy.png" alt="">
                                            </div>
                                            <div class="productDes_details">
                                                <h1>Ananda Ghee 100ml.. </h1>
                                                <h3>100ml Cartoon</h3>
                                                <p>Expire 13 Nov 2022</p>
                                                <h2>&#8377;1</h2>
                                                <p>Current Price: &#8377;54</p>
                                                <div class="addcartbtnRound">
                                                    <span>Add Item</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="productMnd">
                                    <div class="productDes">
                                        <div class="productDes_heading">Shop for 600 to get discount</div>
                                        <div class="productDes_subheading">
                                            <div class="productDes_imagecont">
                                                <img src="./assets/image/dairy.png" alt="">
                                            </div>
                                            <div class="productDes_details">
                                                <h1>Ananda Ghee 100ml.. </h1>
                                                <h3>100ml Cartoon</h3>
                                                <p>Expire 13 Nov 2022</p>
                                                <h2>&#8377;1</h2>
                                                <p>Current Price: &#8377;54</p>
                                                <div class="addcartbtnRound">
                                                    <span>Add Item</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class="topPickForYou">
                            <div class="topPick_header">
                                <div>
                                    <h1>Top Pick For You</h1>
                                </div>
                                <div>
                                    <div class="topPick_header_btn">
                                        <span>View All</span>
                                    </div>
                                </div>
                            </div>
                            <div class="topPick_body">
                                <div class="topPick_body_item">
                                    <div class="topPick_body_item_image">
                                        <img src="./assets/image/img1.png" alt="">
                                    </div>
                                    <div class="topPick_body_item_details">
                                        <div class="topPick_body_item_details_heading">
                                            <h3>More Light Extra Power
                                                Detergent Powder 4 kg</h3>
                                            <div class="topPick_price">
                                                <h1 class="productPrice">&#8377;222</h1>
                                                <h3 class="productActualPrice">425</h3>
                                                <h4 class="productDiscount">50% off</h4>
                                            </div>
                                            <div class="addtoCartBtnClick">
                                                <span>Add Item</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="topPick_body_item">
                                    <div class="topPick_body_item_image">
                                        <img src="./assets/image/img1.png" alt="">
                                    </div>
                                    <div class="topPick_body_item_details">
                                        <div class="topPick_body_item_details_heading">
                                            <h3>More Light Extra Power
                                                Detergent Powder 4 kg</h3>
                                            <div class="topPick_price">
                                                <h1 class="productPrice">&#8377;222</h1>
                                                <h3 class="productActualPrice">425</h3>
                                                <h4 class="productDiscount">50% off</h4>
                                            </div>
                                            <div class="addtoCartBtnClick">
                                                <span>Add Item</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="topPick_body_item">
                                    <div class="topPick_body_item_image">
                                        <img src="./assets/image/img1.png" alt="">
                                    </div>
                                    <div class="topPick_body_item_details">
                                        <div class="topPick_body_item_details_heading">
                                            <h3>More Light Extra Power
                                                Detergent Powder 4 kg</h3>
                                            <div class="topPick_price">
                                                <h1 class="productPrice">&#8377;222</h1>
                                                <h3 class="productActualPrice">425</h3>
                                                <h4 class="productDiscount">50% off</h4>
                                            </div>
                                            <div class="addtoCartBtnClick">
                                                <span>Add Item</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section class=" footer makerDetails">
                            <div class="footerAbout">
                                <div class="aboutTxt">About</div>
                                <div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ea perferendis vel itaque at
                                    dolore nisi animi laboriosam quibusdam harum, aliquam maiores dicta non distinctio
                                    facilis unde tempora odit hic optio.</div>
                            </div>
                            <div class="footerContact">
                                <div>
                                    <span><i class="fa-solid fa-address-book"></i></span>
                                    <span>Contact</span>
                                </div>
                                <div>
                                    <span><i class="fa-brands fa-facebook-f"></i></span>
                                    <span>Facebook</span>
                                </div>
                                <div>
                                    <span><i class="fa-brands fa-instagram"></i></span>
                                    <span>Instagram</span>
                                </div>
                                <div>
                                    <span><i class="fa-brands fa-twitter"></i></span>
                                    <span>Twitter</span>
                                </div>
                            </div>
                            <div class="footerTermPolicy">
                                <div>term and use</div>
                                <div>Privecy Policy</div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>

        <div id="cartModel" class="cartModel">
            <div class="modal-content">
                <div class="modelData">
                    <div class="titleModel">
                        <div class="modelTitleFirst">
                            <h2>My Cart</h2>
                            <span class="closeModelCart">
                                <img src="./assets/icons/right-arrow.png" alt="">
                            </span>
                        </div>
                        <hr width="100%" style="background-color: #000;">
                        <div class="modelTitleSecond">
                            <h4>Delivery In 26 Minuts.</h4>
                        </div>
                    </div>
                    <div class="itemBody">
                        <div class="itemDetails">
                        </div>
                        <div class="billDetails">
                            <div class="billDetailsExt">
                                <h3>Bill Details</h3>
                                <h6>
                                    <span>MRP</span>
                                    <span>&#8377;0</span>
                                </h6>
                                <h6>
                                    <span>Total Discount</span>
                                    <span>&#8377;0</span>
                                </h6>
                                <h6>
                                    <span>Packing Charges</span>
                                    <span>&#8377;0</span>
                                </h6>
                                <h6>
                                    <span>Delivery Charges</span>
                                    <span>&#8377;0</span>
                                </h6>
                                <h6>
                                    <span>Total</span>
                                    <span>&#8377;0</span>
                                </h6>
                            </div>
                        </div>
                    </div>
                    <div class="billPrice">
                        <button class="payButton">
                            <h2>2 items &#149; &#8377;859 &#8377;146 Proceed</h2>
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="overlay"></div>
        <iframe class="profilePopupIFrame" src="./pages/Login Page/index.jsp" frameborder="0"></iframe>
        <% 
			String strb = obj.cartGet("9660102328");
		%>
		<script>
			var cart = <%=strb%>
		</script>
		
        <script src="./localDatabase.js"></script>
        <script src="./assets/JS/loginPopupFrame.js"></script>
        <script src="./script.js"></script>
    </body>

    </html>