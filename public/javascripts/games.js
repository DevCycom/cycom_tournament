// editScore - When you click on a round
$('a.round').live('click', function() {
	round_id = $(this).children('.group_game_scores').attr('id').substring(6);
		
	form = $('#edit_round_' + round_id)
	if (form.css('display') == 'none')
		form.slideDown();
	else
		form.effect("highlight", {}, 2000);
	form.find('input:visible:first').focus();
});

// cancelEdit - When you close the edit form
$('a.cancel-edit').live('click', function() {
	$(this).parent().slideUp();
});
	
// updateScore - When you submit the edit form
$('form.round_edit').live('submit', function() {
	$(this).children('a').replaceWith("<img src=\"/images/loading.gif\" alt=\"\" />");
});