
function fetchApiData(){
	fetch('https://jsonplaceholder.typicode.com/posts').then((resp)=>{
		// console.log(resp.json());

		return resp.json();
	}).then((apidata)=>{
		console.log(apidata);
		
		var myApiData=apidata.map((resdata)=>{
			return `
          <div class="col-sm-4 mt-2 mb-2  ">
    <div class="card h-100  api-card api-card-color" >
      <div class="card-body">
              <a href="#" class="btn white-color">${resdata.id}</a>
        <h5 class="card-title text-white">${resdata.title}</h5>
        <p class="card-text">${resdata.body}</p>
      </div>
    </div>
  </div>
`;
		});
		
		document.getElementById('showApiData').innerHTML=myApiData.join("");
	})

}

fetchApiData();
$(document).ready(function(){
    $("#theme-btn").click(function(){
        // Toggle dark mode classes on body, nav, and other elements
        $("body, nav, .dropd, .foott").toggleClass("dark-mode dark-nav");
        $(".api-card").toggleClass("dark-card-color");
        $(".foot-card").toggleClass("foot-dark-card-color");
        $(".allNotecard").toggleClass("foot-dark-card-color");
        $(".allNoteheadfoot").toggleClass("allnotehead");
        $(".addformcolorbody").toggleClass("addformcolor");

        
        // Check if body has 'dark-mode' class
        if($("body").hasClass("dark-mode")){
            // Remove class 'fetcf' from elements with the class 'fetc'
            $(".api-card").removeClass("api-card-color");
            $(".foot-card").removeClass("foot-card-color");

        } else {
            // Add class 'fetcf' to elements with the class 'fetc'
            $(".api-card").addClass("api-card-color");
            $(".foot-card").addClass("foot-card-color");

        }
    });
});
