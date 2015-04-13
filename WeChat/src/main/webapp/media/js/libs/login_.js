$(function() {
	$.ajax({
		url : '/listUser',
		type : "GET",
		success : function(data) {
			data = eval('(' + data + ')');
			for (var i = 0; i < data.length; i++) {
				var user = data[i];
				var option = "<option value=\"" + user.name + "\"> "
						+ user.name + "</option>";
				$("#username").append(option);
			}
		},
		error : function(data) {
		}
	});
});