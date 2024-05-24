$(function(){
	$("#submitmessageform").submit(function(){
		var hey=$(this)[0];
		$.ajax({data:$(this).serialize(),url: hey.action, type:hey.method,success:function(data){
			console.log(data);}});
		$("[data-chat-room]").append(`
		<article class="chat-line" id="message_${data.id}">
		    <span class="speaker">prenom</span>
		        <span class="body">${data.content}</span>
			                                                                                                                                      </article>

			`);

		return false;
	});
  if ($("#btnsearchpeople").length > 0){
  $("#btnsearchpeople").click(function(ev){
	  ev.preventDefault();
	  ev.stopPropagation();
    $.ajax({url: "/people/hash", data: {name: $("#searchpeople").val()},
                                        success: function(data){
                                          $("#selectpeople").html("<option></option>");
            for (var i = 0;i<data.length ;i++){

                $("#selectpeople").append("<option id=\"myperson"+String(i)+"\" value=\""+String(data[i].id)+"\">"+String(data[i].name)+"</option>");
            }




    }});
  
  });
  }
  if ($("#selectpeople").length > 0){
                $("#selectpeople").change(function(e){
	  e.preventDefault();
	  e.stopPropagation();
                  $.ajax({url: "/people/radio",data:{id: e.target.value},
                          success:function(data){
                            $("#genstrouve").append(data);
                          }});
                });
  }
  if ($("#btnsearchdevice").length > 0){
  $("#btnsearchdevice").click(function(ev){
	  ev.preventDefault();
	  ev.stopPropagation();
    $.ajax({url: "/devices/hash", data: {name: $("#searchdevice").val()},
                                        success: function(data){
                                          $("#selectdevice").html("<option></option>");
            for (var i = 0;i<data.length ;i++){

                $("#selectdevice").append("<option id=\"mydevice"+String(i)+"\" value=\""+String(data[i].id)+"\">"+String(data[i].name)+"</option>");
            }




    }});
  
  });
  }
  if ($("#selectdevice").length > 0){
                $("#selectdevice").change(function(e){
	  e.preventDefault();
	  e.stopPropagation();
                  $.ajax({url: "/devices/radio",data:{id: e.target.value},
                          success:function(data){
                            $("#appareiltrouve").append(data);
                          }});
                });
  }
  });
