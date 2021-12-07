
// DOCUMENT READY
$(()=>{ 

   checkUserId();

   // Event Delegation
   $(document)


   .on("pagecontainerbeforeshow", function(event, ui){
      //Page Routing
      switch(ui.toPage[0].id){
         case "page-map": MapPage(); break;
         case "page-list": ListPage(); break;
         case "page-user-profile": UserProfilePage(); break;
         case "page-user-edit": UserEditPage(); break;
         case "page-dog-profile": DogProfilePage(); break;
         case "page-edit-dog-profile": DogEditPage(); break;
         case "page-add-dog": DogAddPage(); break;
         case "page-location-set-location": LocationSetLocationPage(); break;
         case "page-location-choose-dog": LocationChooseDogPage(); break;

      }
   })



   // FORM SUBMITS
   .on("submit","#signin-form",function(e) {
      e.preventDefault();
      checkSigninForm();
   })


   .on("submit","#list-add-form",function(e) {
      e.preventDefault();
   })


   .on("submit", "#dog-add-form", function(e){
      e.preventDefault();
      dogAddForm();
   })

   .on("submit", "#dog-edit-form", function(e) {
      e.preventDefault();
      dogEditForm();
   })


  .on("submit", "#list-search-form", function(e) {
      e.preventDefault();
      let s = $(this).find("input").val();
      checkSearchForm(s);
   })



   //FORM ANCHOR CLICKS

   // .on("click",".js-submituseredit",function(e) {
   //    e.preventDefault();
   //    userEditForm();
   // })
   // .on("click",".js-submituserpassword",function(e) {
   //    e.preventDefault();
   //    userEditPasswordForm();
   // })
   .on("click",".js-submitlocationform",function(e){
      e.preventDefault();
      locationAddForm();
   })



   // ANCHOR CLICKS
   .on("click",".js-logout",function(e) {
      e.preventDefault();
      sessionStorage.removeItem("userId");
      checkUserId();
   })


   .on("click",".dog-jump",function(e){
      if(!$(this).data("id")) throw("No ID on element");
      sessionStorage.dogId = $(this).data("id");
      $.mobile.navigate("#page-dog-profile");

   })

   .on("click","[data-setnavigateback]",function(e){
      $("#location-navigateback").val($(this).data("setnavigateback"))
   })
   .on("click",".js-navigate-back",function(e){
      window.history.go(+$("#location-navigateback").val());
   })

   .on("click",".js-choosedog",function(e){
      $("#location-dog-choice").val(sessionStorage.dogId);
   })


   .on("click",".dog-profile-middle li",function(e){
      let id = $(this).index();
      $(this).addClass("active")
         .siblings().removeClass("active");
      $(this).closest(".dog-profile-middle").next().children().eq(id).addClass("active")
         .siblings().removeClass("active");
   })



   .on("click","[data-activate]",function(e){
      e.preventDefault();
      let target = $(this).data("activate");
      $(target).addClass("active");
   })



   .on("click","[data-deactivate]",function(e){
      e.preventDefault();
      let target = $(this).data("deactivate");
      $(target).removeClass("active");
   })



   .on("click","[data-toggle]",function(e){
      e.preventDefault();
      let target = $(this).data("toggle");
      $(target).toggleClass("active");
   })



   .on("click","[data-activateone]",function(e){
      let target = $(this).data("activateone");
      $(target).addClass("active").siblings().removeClass('active');
   })
   ;



   $("[data-template]").each(function(){
      let target = $(this).data("template");
      $(this).html($(target).html());
   })

   // $({
   //    "#page-map":".nav-icon-set li:nth-child(1)",
   //    "#page-list":".nav-icon-set li:nth-child(2)",
   //    "#page-user-profile":".nav-icon-set li:nth-child(3)",
   // }[location.hash]).addClass("active");

});




