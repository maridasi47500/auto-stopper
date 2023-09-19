$(function(){
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
                $("#selectpeople").change(function(e){
	  e.preventDefault();
	  e.stopPropagation();
                  $.ajax({url: "/people/radio",data:{id: e.target.value},
                          success:function(data){
                            $("#genstrouve").append(data);
                          }});
                });
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
                $("#selectdevice").change(function(e){
	  e.preventDefault();
	  e.stopPropagation();
                  $.ajax({url: "/devices/radio",data:{id: e.target.value},
                          success:function(data){
                            $("#appareiltrouve").append(data);
                          }});
                });
  });
