
const makeDogList = templater((o)=>`
	<div class="dog-list-item">
	<div class="display-flex dog-jump" data-id="${o.id}">
		<div class="flex-none dog-list-item-image">
			<img src="${o.img}" alt="">
		</div>
		<div class="flex-stretch dog-list-item-body padding-md">
			<div class="dog-list-item-name"> ${o.name}</div>
         <div class="dog-list-item-breed"><strong>Breed</strong> ${o.breed}</div>
			<div class="dog-list-item-temperament"><strong>Temperament</strong> ${o.temperament}</div>
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

const makeDogProfile = (o) => `
   <div>
      <h2>${o.name}</h2>
      <div><strong>breed</strong>${o.breed}</div>
      <div><strong>temperament</strong>${o.temperament}</div>
      <div><strong>description</strong>${o.description}</div>
   </div>

`;

const makeDogPopup = o => `
	<div class="display-flex dog-jump" data-id="${o.dog_id}">
	<div class="flex-none dog-popup-image">
			<img src="${o.img}" alt="">
		</div>
		<div class="flex-stretch dog-list-item-body padding-md">
			<div class="dog-popup-name"> ${o.name}</div>
         <div class="dog-popup-breed"><strong>Breed</strong> ${o.breed}</div>
			<div class="dog-popup-temperament"><strong>Temperament</strong> ${o.temperament}</div>
		</div>
	</div>
`;

const FormControlInput = ({namespace,name,displayname,type,placeholder,value}) => `
<div class="form-control">
   <label for="${namespace}-${name}" class="form-label">${displayname}</label>
   <input type="${type}" id="${namespace}-${name}" class="form-input" data-role="none" placeholder="${placeholder}" value="${value}">
</div>
`;


const FormControlTextarea = ({namespace,name,displayname,placeholder,value}) => `
<div class="form-control">
   <label for="${namespace}-${name}" class="form-label">${displayname}</label>
   <textarea id="${namespace}-${name}" class="form-input" data-role="none" placeholder="${placeholder}">${value}</textarea>
</div>
`;

const makeDogFormInputs = (o,namespace) => `
${FormControlInput({
   namespace:namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Type The Dog Name",
   value:o.name
})}
${FormControlInput({
   namespace:namespace,
   name:"breed",
   displayname:"Breed",
   type:"text",
   placeholder:"Type The Dog Breed",
   value:o.breed
})}
${FormControlInput({
   namespace:namespace,
   name:"temperament",
   displayname:"Temperament",
   type:"text",
   placeholder:"Type The Dog Temperament",
   value:o.temperament
})}
${FormControlTextarea({
   namespace:namespace,
   name:"description",
   displayname:"Description",
   placeholder:"Type The Dog Description",
   value:o.description
})}
`;


const makeUserFormInputs = (o,namespace) => `
${FormControlInput({
   namespace:namespace,
   name:"name",
   displayname:"Name",
   type:"text",
   placeholder:"Type The User Name",
   value:o.name
})}
${FormControlInput({
   namespace:namespace,
   name:"username",
   displayname:"Username",
   type:"text",
   placeholder:"Type The User Handle",
   value:o.username
})}
${FormControlInput({
   namespace:namespace,
   name:"email",
   displayname:"Email",
   type:"email",
   placeholder:"Type The Email Address",
   value:o.email
})}
`;









