
const resultQuery = async (options) => {
	//destructure
		let {result,error} = await query(options);

	if(error) {
		throw(error);
		return;
	}

	return result;
}



const ListPage = async() => {
	let result = await resultQuery({type:'dogs_by_user_id',params:[sessionStorage.userId]}
		);
	


	console.log(result);

	$("#page-list .dog-list").html(makeDogList(result));
}


const MapPage = async() => {
	let result = await resultQuery({type:'recent_dog_locations',params:[sessionStorage.userId]});

	
	let dogs = result.reduce((r,o)=> {
		o.icon = o.img;
		if(o.lat && o.lng) r.push(o);
		return r;
	},[]);

	let mapEl = await makeMap("#page-map .map");

	makeMarkers(mapEl,dogs);	
}



const UserProfilePage = async() => {
	let result = await resultQuery({type:'user_by_id',params:[sessionStorage.userId]});


	console.log(result);
	let [user] = result;
	$("#page-user-profile [data-role='main']").html(makeUserProfile(user));
}



const DogProfilePage = async() => {
		let dog_result = await resultQuery({
			type:'dog_by_id',
			params:[sessionStorage.dogId]
		});

		let[dog] = dog_result;
			$(".dog-profile-top img").attr("src",dog.img);
			$(".dog-profile-bottom .description").html(dog.description);


		let locations_result = await resultQuery({
			type:'locations_by_dog_id',
			params:[sessionStorage.dogId]
		});

	let mapEl = await makeMap("#page-dog-profile .map");
	makeMarkers(mapEl,locations_result);
}


const DogEditPage = async() => {
		let dog_result = await resultQuery({
			type:'dog_by_id',
			params:[sessionStorage.dogId]
		});

		let[dog] = dog_result;
		$(".dog-profile-top img").attr("src",dog.img);

		$("#dog-edit-name").val(dog.name);
		$("#dog-edit-temperamant").val(dog.temperamant);
		$("#dog-edit-breed").val(dog.breed);

}










