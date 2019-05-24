<%-- 
    Document   : user
    Created on : 14/05/2018, 02:49:21 PM
    Author     : alum.fial1
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="../../WEB-INF/template/headerMain.jspf" %>
    </head>
    <body>
        <%@include file="../../WEB-INF/template/headerMainBody.jspf" %>
        <h1>Soy Usuario!</h1>
        <hr>
        <button class="btn btn-success" id="crearuser"><i class="fas fa-plus"></i></button>
        <hr>
        <table class="table" id="tablita">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">ID</th>
                    <th scope="col">ROL</th>
                    <th scope="col">ACCION</th>
                </tr>
            </thead>
            <tbody>                    
            </tbody>
        </table>
    </div>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">REGISTRAR USUARIO</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Apellido:</label>
                        <input type="text" id="apeuser" class="form-control">
                        <label>Nombre:</label>
                        <input type="text" id="nomuser" class="form-control">
                        <label>Rol:</label>
                        <select class="from-control" id=roli>
                        <option>Selecccionar Rol</option>
                        </select>
                        <input type="text" id="nomrol" class="form-control">
                        <label>Usuario:</label>
                        <input type="text" id="useruser" class="form-control">
                        <label>Clave:</label>
                        <input type="password" id="claveuser" class="form-control">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" id="saverol">Save Rol</button>
                </div>
            </div>
        </div>
    </div>
        <%@include file="../../WEB-INF/template/footerMain.jspf" %>
    </body>
</html>
