console.log("userData:: ", userData)
console.log("orderdata:: ",userOrderDetails)
const bodyContainer = document.querySelector(".bodyContainer");

const checkGender = (gen) => {
	if(userData[0].gender!==null){
		if (userData[0].gender == gen){
			return "checked";
		}else{
			return "";
		}
	}else{
		return "";
	}
}
if(userData !== null){
	bodyContainer.innerHTML = `
		<div class="bodyMain">
                    <div class="imageUser">
                        <div class="imageCntUser"></div>
                        <div class="imageText">
                            <span><i>Hello,</i></span>
                            <span class="name">${userData[0].firstName}</span>
                        </div>
                    </div>
                    <div class="personalInformation">
                        <form action="javascript:void(0)" class="formEdit">
                            <div class="personHeading">Personal Information</div>
                            <div class="nameFullN">
                                <input value="${userData[0].firstName}" type="text" name="firstName" placeholder="First Name" class="inputStyle">
                                <input  value="${userData[0].lastName}" type="text" name="lastName" placeholder="Last Name" class="inputStyle">
                            </div>
                            <div class="emailUser">
                                <input type="email" name="email" id="email" placeholder="somone@gmail.com"
                                    class="inputStyle fullSize" value="${userData[0].email}">
                            </div>
                            <div class="phoneUser">
                                <input type="tel" name="phonenumber" class="inputStyle fullSize" id="phonenumber"
                                    placeholder="+91 0000000000" maxlength="10" value="${userData[0].phoneNo}">
                            </div>
                            <div class="genderUser">
                            	<input type="radio" name="gender" value="male" ${checkGender("male")}> Male
                                <input type="radio" name="gender" value="female" ${checkGender("female")}> Female
                              </div>

                            <div class="personHeading">Addresses</div>
                            <div class="addressSet">
                                <div class="inst">Home</div>
                                <div class="comp">Name: ${userData[0].firstName} ${userData[0].lastName} ${userData[0].phoneNo}</div>
                                <div class="comp">Flat: 403, Building 53, Kolkata, West Bengal, 700351</div>
                                <!-- <textarea name="addressinput" id="address" cols="45" rows="5"
                                    placeholder="Enter Address" maxlength="500" class="width100"></textarea> -->

                            </div>
                            <button type="submit" class="btnsave">Save</button>
                        </form>

                    </div>
                    <div class="orderDetails">
                        <div class="personHeading">Order Details</div>
                        <div class="singleItemOrder">
                            <div class="imageSingle">
                                <img src="../../assets/image/dairy.png" alt="">
                            </div>
                            <div class="singleContent">
                                <div class="singleName">Natureland Organics Masoor Dal (Whole)</div>
                                <div class="priceDesc">
                                    <h2>&#8377; 140</h2>
                                    <h3>&#8377; 219</h3>
                                    <h5>36% off</h5>
                                </div>
                                <div class="singleQuantity">1Kg</div>
                            </div>
                            <div class="status">
                                <div class="statusText">
                                    <span class="statusTxt statusDilevered">Delivered</span>
                                </div>
                                <div class="statusText">
                                    <span class="statusDate">12/12/2020</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
	`;
}