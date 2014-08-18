$(function() {

	var App = {

		init: function() {
			this.bindForm();
		},

		bindForm: function() {
			$('.search_form').on('submit', 'form', function(e){
				e.preventDefault()
				$('p.error').remove();
				$('div.song_list').remove();

				var emptyFields = $('input', this).filter(function() { return $.trim(this.value).length === 0;}).length;
				if ( emptyFields === 3 ) {
					$(this).append("<p class='error'>Please fill in at least one field.</p>");
				} 
				else {
					var search =
					$.ajax({
						url: "/search",
						type: "GET",
						data: $(this).serialize()
					});

					search.done( function(response){ 
						$('.search').append("<div class='song_list'><h2>Song List</h2>"+response+"</div>");
					});
				}
			});
		}
	}

	App.init();
});