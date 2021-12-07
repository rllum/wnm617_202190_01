
const dogAddForm = async() => {
	let name = $("#dog-add-name").val();
	let breed = $("#dog-add-breed").val();
	let temperament = $("#dog-add-temperament").val();
	let description = $("#dog-add-description").val();

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
	let name = $("#user-edit-username").val();
	let breed = $("#user-edit-name").val();
	let temperament = $("#user-edit-email").val();

	let r = await query({
		type:'update_dog',
		params:[username,name,email,sessionStorage.userId]
	});

	if(r.error) throw(r.error);

	history.go(-1);
}



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











