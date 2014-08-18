$(function() {

	var App = {

		init: function() {
			this.bindForm();
		},

		bindForm: function() {
			$('.search_form').on('submit', 'form', function(e){
				e.preventDefault();
				var search =
				$.ajax({
					url: "/search",
					type: "GET",
					data: $(this).serialize()
				});
			});
		}
	}

	App.init();
});