
const ListPage = async() => {
	//destructure
	let {result,error} = await query({type:'dogs_by_user_id',params:[sessionStorage.userId]});

	if(error) {
		console.log(error);
		return;
	}

	console.log(result,error);

	$("#page-list .dog-list").html(makeDogList(result));
}

const MapPage = async() => {
	console.log("honk")
}



const UserProfilePage = async() => {
	let {result,error} = await query({type:'user_by_id',params:[sessionStorage.userId]});

		if(error) {
		console.log(error);
		return;
	}

	console.log(result,error);
	let [user] = result;
	$("#page-user-profile [data-role='main']").html(makeUserProfile(user));
}



const DogProfilePage = async() => {
		let {result,error} = await query({type:'dog_by_id',params:[sessionStorage.dogId]});

		if(error) {
		console.log(error);
		return;
	}

	let[dog] = result;
	$(".dog-profile-top img").attr("src",dog.img);
}










