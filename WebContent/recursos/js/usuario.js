$(document).ready(function (){
    listarRol();
});
function listarRol(){
    var nom = $("#caja").val();
    $.get("rol",{"opc":1},function (data) {
        var x = JSON.parse(data);
          $("#tablita tbody tr").remove(); 
        for(var i = 0;i<x.length;i++){
            $("#tablita").append("<tr><td>"+(i+1)+"</td><td>"+x[i].idr+"</td><td>"+x[i].nomrol+"</td><td><a href='#' onclick='editar("+x[i].idr+")'><i class='far fa-edit'></i></a></td><td><a href='#' onclick='eliminar("+x[i].idr+")'><i class='fas fa-trash-alt'></i></a></td></tr>");
        }
    });

}

function listarRolId(){
    $.get("rol",{"opc":2},function (data) {
        alert(data);
    });
}
$("#crearuser").click(function (){
    $("#nomuser").val("");
    $("#apeuser").val("");
    $("#nomrol").val("");
    $("#useruser").val("");
    $("#clavuser").val("");
    document.getElementById("nomuser").focus();
    $("#myModal").modal('show');
    
});

$("#saverol").click(function (){
    var nr = $("#nomuser").val("");
    var nr = $("#apeuser").val("");
    var nr = $("#nomrol").val("");
    var nr = $("#useruser").val("");
    var nr = $("#clavuser").val("");
    $.post("user",{"nombrerol":nr,"opc":3},function () {
        listarRol();
    });
    $("#myModal").modal('hide');
    
});
$("#editrol").click(function (){
    var id = $("#edit_idrol").val();
    var nomrol = $("#edit_nomrol").val();
    $.post("rol",{"id":id,"nomrol":nomrol,"opc":4}, function () {
        listarRol();
    });
    $("#myModal2").modal('hide');
});


