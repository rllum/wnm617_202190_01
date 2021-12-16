
const dogAddForm = async() => {
	let name = $("#dog-add-name").val();
	let breed = $("#dog-add-breed").val();
	let temperament = $("#dog-add-temperament").val();
	let description = $("#dog-add-description").val();
	// let image = $("#dog-add-image").val();

	let r = await query({
		type:'insert_dog',
		params:[sessionStorage.userId,name,breed,temperament,description]
	});

	if(r.error) throw(r.error);

	sessionStorage.dogId = r.id;
	history.go(-1);
}


const dogEditForm = async() => {
	let name = $("#dog-edit-name").val();
	let breed = $("#dog-edit-breed").val();
	let temperament = $("#dog-edit-temperament").val();
	let description = $("#dog-edit-description").val();

	let r = await query({
		type:'update_dog',
		params:[name,breed,temperament,description,sessionStorage.dogId]
	});

	if(r.error) throw(r.error);

	history.go(-1);
}


const userEditForm = async() => {
	let username = $("#user-edit-username").val();
	let name = $("#user-edit-name").val();
	let email = $("#user-edit-email").val();

	let r = await query({
		type:'update_user',
		params:[username,name,email,sessionStorage.userId]
	});

	if(r.error) throw(r.error);

	history.go(-1);
}


const checkSignup = async () => {
   let email = $("#signup-email").val();
   let username = $("#signup-username").val();
   let password = $("#signup-password").val();
   let confirm = $("#signup-password2").val();

   if(password!=confirm)
      throw("Passwords don't match: You should handle this in some way.");

   let r = await query({
      type:'insert_user',
      params:[username,email,password]
   });

   if(r.error) throw(r.error);

   sessionStorage.userId = r.id;

   $.mobile.navigate("#page-list");
}




// const checkSignup2 = async () => {
//    let name = $("#signup-name").val();
//    let image = $("#signup-image-name").val();

//    let r = await query({
//       type:'update_user_onboard',
//       params:[name,image,sessionStorage.userId]
//    });

//    if(r.error) throw(r.error);

//    $.mobile.navigate("#page-list");
// }



const userEditPasswordForm = async() => {
	let password = $("#user-password-initial").val();
	let confirm = $("#user-password-confirm").val();

	if(password!==confirm) throw("Passwords don't match")

	let r = await query({
		type:'update_user_password',
		params:[password,sessionStorage.userId]
	});

	if(r.error) throw(r.error);

	history.go(-1);
}

const locationAddForm = async () => {
   let dog = $("#location-dog-choice").val();
   let lat = $("#location-lat").val();
   let lng = $("#location-lng").val();
   let description = $("#location-description").val();

   let r = await query({
      type:'insert_location',
      params:[dog,lat,lng,description]
   });

   if(r.error) throw(r.error);

   history.go($("#location-navigateback").val());
}



const checkSearchForm = async (s) => {
   let dogss = await query({
      type:'search_dogs',
      params:[s,sessionStorage.userId]
   });

   if(dogss.error) throw(dogss.error);

   makeDogListSet(dogss.result);
}











