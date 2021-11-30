
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
		params:[,name,breed,temperament,description,sessionStorage.dogId]
	});

	if(r.error) throw(r.error);

	history.go(-1);
}

