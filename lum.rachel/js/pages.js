
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
		let dogs = await resultQuery({
		type:'dogs_by_user_id',
		params:[sessionStorage.userId]
	});


	makeDogListSet(dogs);
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

	let {infoWindow,map,markers} = mapEl.data();
	markers.forEach((o,i)=> {
		o.addListener("click",function(){

			// simple example
			// sessionStorage.dogId = dogs[i].dog_id;
			// $.mobile.navigate("#page-dog-profile")

			// Info Window
			infoWindow.open(map,o);
			infoWindow.setContent(makeDogPopup(dogs[i]))

		})
	});
}



const UserProfilePage = async() => {
	let result = await resultQuery({type:'user_by_id',params:[sessionStorage.userId]});


	console.log(result);
	let [user] = result;
	$("#page-user-profile [data-role='main']").html(makeUserProfile(user));
}

const UserEditPage = async() => {
		let user_result = await resultQuery({
			type:'user_by_id',
			params:[sessionStorage.userId]
		});

		let[user] = user_result;

		$("#user-edit-form .fill-parent").html(
			makeUserFormInputs(user,"user-edit")
			);
}


const DogProfilePage = async() => {
		let dog_result = await resultQuery({
			type:'dog_by_id',
			params:[sessionStorage.dogId]
		});

		let[dog] = dog_result;
			$(".dog-profile-top img").attr("src",dog.img);
			$(".dog-profile-bottom .description").html(makeDogProfile(dog));


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

		$("#dog-edit-form .fill-parent").html(
			makeDogFormInputs(dog,"dog-edit")
			);
}


const DogAddPage = async() => {
	$("#dog-add-form .fill-parent").html(
	makeDogFormInputs({
		namespace:'',
		name:'',
		temperament:'',
		breed:'',
		description:''
		
	},"dog-add")
	);
}


const LocationSetLocationPage = async() => {
	let mapEl = await makeMap("#page-location-set-location .map");
	makeMarkers(mapEl,[]);

	mapEl.data("map").addListener("click",function(e){
		$("#location-lat").val(e.latLng.lat())
		$("#location-lng").val(e.latLng.lng())
		makeMarkers(mapEl,[e.latLng]);
	})
}


const LocationChooseDogPage = async() => {
   let result = await resultQuery({
      type:'dogs_by_user_id',
      params:[sessionStorage.userId]
   });

   console.log(result)

   $(".location-dog-choice-select").html(
      makeDogChoiceSelect({
         dogs:result,
         name:'location-dog-choice-select'
      })
   );
   $("#location-dog-choice").val(result[0].id);
}





