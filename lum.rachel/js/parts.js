
const makeDogList = templater((o)=>`
	<div class="dog-list-item">
	<div class="display-flex dog-jump" data-id="${o.id}">
		<div class="flex-none dog-list-item-image">
			<img src="${o.img}" alt="">
		</div>
		<div class="flex-stretch dog-list-item-body padding-md">
			<div class="dog-list-item-name"> ${o.name}</div>
			<div class="dog-list-item-temperament"><strong>Temperament</strong> ${o.temperament}</div>
			<div class="dog-list-item-breed"><strong>Breed</strong> ${o.breed}</div>
		</div>
	</div>
	</div>
`);

const makeUserProfile = (o) => `
	<div class="user-profile-image">
		<img src="${o.img}" alt="">
	</div>

	<div>
		<h2>${o.name}</h2>
		<h3>&commat;${o.username}</h3>
		<div><a href="#page-user-settings">Settings</a></div>
	</div>

`;





