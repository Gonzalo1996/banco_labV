<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:baseAdmin title="Listado clientes">
    <link rel="stylesheet" type="text/css" href="content/dataTable/datatables/datatables.min.css"/>
    <link rel="stylesheet"  type="text/css" href="content/dataTable/datatables/DataTables-1.10.18/css/dataTables.bootstrap4.min.css">
	
	<!-- Fonts -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Barlow:wght@100&display=swap" rel="stylesheet">
		
     <div class="container"> 
     	<div class="row">
     		<div class="col-md-12">
				<h3 style="font-family: 'Barlow', sans-serif">Listado de clientes:</h3>				
			</div>
     	</div>
     
   	<div class="row">
		<div class="col-md-12">
		
		<form method="get" action="FiltradoClientes.html">
		
 			<div class="form-group row">
	 			<label class="col-md-1 col-form-label" for="txtProvincia">Provincia:</label>
	 					
	 			<div class="col-md-4">		
					<select id="provincia" name="provincia" class="btn btn-outline-info  dropdown-toggle btn-md" style="width: 100%">
						<c:forEach items="${listProvincias}" var="provincia"
							varStatus="status">
							<option value="${provincia.id}"
								${provincia.id == cliente.provincia.id ? 'selected' : ''}>${provincia.nombre}</option>
						</c:forEach>
					</select>									
	 			</div>
	 			
		 		<div class="col-md-4">
					<button type="submit" class="btn btn-primary">Filtrar <span class="fa fa-filter"></span></button>
					<a href="listadoClientes.html" class="btn btn-info">Quitar <span class="fa fa-times"></span></a>				
				</div>			
			</div>
			
			<div class="form-group row">
					<label class="col-md-1 col-form-label" for="txtLocalidad">Localidad:</label>
					<div class="col-md-4">				
						<select id="localidad" name="localidad" class="btn btn-outline-info  dropdown-toggle btn-md" style="width: 100%">
							<c:forEach items="${listLocalidades}" var="localidad"
								varStatus="status">
								<option value="${localidad.id}"
									${localidad.id == cliente.localidad.id ? 'selected' : ''}>${localidad.nombre}</option>
							</c:forEach>
						</select>	
 					</div>		
 			</div>
		
		</form>
		</div>
	</div>
       
        <div class="row">
                <div class="col-md-12">
                    <div class="table-responsive">        
                        <table id="example" class="table table-hover table-bordered" style="width:100%">
                        <thead>
                            <tr>
								<th>Nombre</th>
								<th>Apellido</th>
								<th>DNI</th>
								<th>CUIL</th>
								<th>Correo</th>								
								<th>Dirección</th>	
								<th>Localidad</th>
								<th>Estado</th>								
								<th>Editar</th>
								<th>Borrar</th>
                            </tr>
                        </thead>
                        <tbody>
							<c:forEach items="${listClientes}" var="u">
								<tr>
									<td>${u.nombre}</td>
									<td>${u.apellido}</td>
									<td>${u.dni}</td>
									<td>${u.cuil}</td>
									<td>${u.correo}</td>
									<td>${u.direccion}</td>
									<td>${u.localidad}</td>		

									<c:choose>
										<c:when test="${u.usuario.estado ==true}">
											<td>Activo</td>
										</c:when>
										<c:otherwise>
											<td>Inactivo</td>
										</c:otherwise>
									</c:choose>
									<td><a class="btn btn-primary" href="<c:url value='/editarCliente.html?dni=${u.dni}'/>"><span class="fa fa-pencil"></span></a></td>							
									 <c:choose>
										<c:when test="${u.usuario.estado ==true}">
											<td><a class="btn btn-info" href="<c:url value='/bajaUsuario.html?dni=${u.dni}'/>"><span class="fa fa-trash"></span></a></td>									
										</c:when>
										<c:otherwise>
											<td><a class="disabled btn btn-secondary" href="<c:url value='/bajaUsuario.html?dni=${u.dni}'/>"><span class="fa fa-trash"></span></a></td>									
										</c:otherwise>
									</c:choose>	
								</tr>
							</c:forEach>
                        </tbody>        
                       </table>                  
                    </div>
                </div>
        </div>  
    </div>
    
<script>
$(function(){
	$('#provincia').change(function(e){
		var data = {
			idProvincia: parseInt(this.value)
		};
   		
        $.ajax({
            url: './getLocalidadesPorProvincia.html',
            type: 'GET',
            data: data,
            dataType: 'json',
            success: function (response) {                                
                var options = '';
                $.each(response, function(key, value) {
                    options += "<option value='"+value.id+"'>"+value.nombre+"</option>";
                });
                
                $('#localidad')
                	.empty()
                	.append(options);
            },
            error: function(xhr, ajaxOptions, thrownError) {
            	var errorMsg = 'Error ' + xhr.status + '\r\n' + xhr.responseText;
                alert(errorMsg);
            }
        });
        
	});
});
</script>
        
</t:baseAdmin>
      
    <script src="content/dataTable/jquery/jquery-3.3.1.min.js"></script>
    <script src="content/dataTable/popper/popper.min.js"></script>
    <script src="content/dataTable/bootstrap/js/bootstrap.min.js"></script>
      
    <!-- datatables JS -->
    <script type="text/javascript" src="content/dataTable/datatables/datatables.min.js"></script>    
    <script type="text/javascript" src="content/dataTable/main.js"></script>  