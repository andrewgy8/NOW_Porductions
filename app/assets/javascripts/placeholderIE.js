window.ie9placeholder = function(){

	$('[placeholder]').each(function(){

		var self = $(this),
			ph = self.attr('placeholder');

		self.val(ph);

		self.on('focus',function(){
			if($(this).val() == ph){
				$(this).val("");
			}
		}).on('blur',function(){
			if($(this).val() == ""){
				$(this).val(ph);
			}
		});

	});
}