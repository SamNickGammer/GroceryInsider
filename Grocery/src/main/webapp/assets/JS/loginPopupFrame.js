const profilePopupIFrame = document.querySelector('.profilePopupIFrame');
const userAccountImage = document.querySelector('.userAccountImage');
const overlay = document.querySelector('.overlay');
const productIFrame = document.querySelector('.productIFrame');

userAccountImage.addEventListener('click', (e) => {
  if (localStorage.getItem('userDetails')) {
	if (window.location.pathname === "/Grocery/pages/ShopingListPage/index.jsp"){		
    	window.location.href = `../../pages/UserProfile/index.jsp`;
	}else if(window.location.pathname ==="/Grocery/index.jsp"){
		window.location.href = `./pages/UserProfile/index.jsp`;
	}else{
		console.log(window.location)
	}

  } else {
    profilePopupIFrame.style.display = 'block';
    overlay.style.display = 'block';
    document.body.classList.add('stop-scrolling');
  }
});
