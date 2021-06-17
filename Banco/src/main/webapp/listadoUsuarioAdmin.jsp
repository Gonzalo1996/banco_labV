<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:base>
    <link rel="stylesheet" type="text/css" href="content/dataTable/datatables/datatables.min.css"/>
    <link rel="stylesheet"  type="text/css" href="content/dataTable/datatables/DataTables-1.10.18/css/dataTables.bootstrap4.min.css">

     <div class="container">
     
     	<div class="row">
		<div class="col-md-12">
		<form method="get" action="x">
		<div class="form-group row">
				<label class="col-md-1 col-form-label" for="txtNombre" >Nombre:</label>
				<div class="col-md-4">
					<input id="txtNombre" type="text" class="form-control" placeholder="Nombre">
				</div>
		
			<div class="col-md-4">
				<button type="submit" class="btn btn-primary">Filtrar <span class="fa fa-filter"></span></button>
				<button type="submit" class="btn btn-info">Quitar <span class="fa fa-times"></span></button>				
'			</div>
		</div>
			  
		<div class="form-group row">
			<label class="col-md-1 col-form-label" for="txtDni" >DNI:</label>
			<div class="col-md-4">
			 	<input id="txtDni" type="text" class="form-control" placeholder="DNI">
			</div>
			
			<div class="col-md-4">
				<button type="submit" class="btn btn-primary">Filtrar <span class="fa fa-filter"></span></button>
			    <button type="submit" class="btn btn-info">Quitar <span class="fa fa-times"></span></button>							
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
								<th>Localidad</th>
								<th>Dirección</th>
								<th>Telefono</th>
								<th>Editar</th>
								<th>Borrar</th>
                            </tr>
                        </thead>
                        <tbody>
                        
                            <tr>
								<td>Gonzalo</td>
								<td>Alderete</td>
								<td>410001</td>
								<td>20413333</td>
								<td>Garin</td>
								<td>Calle falsa 123</td>
								<td>1132724000</td>
								<td><button type="submit" class="btn btn-primary"><span class="fa fa-pencil"></span></button></td>
								<td><button type="submit" class="btn btn-info"><span class="fa fa-trash"></span></button></td>
                            </tr>                       
                         
                            <tr>
								<td>Marcos</td>
								<td>Vera</td>
								<td>430101</td>
								<td>204301015</td>
								<td>Don torcuato</td>
								<td>Calle falsa 456</td>
								<td>1132724000</td>
								<td><button type="submit" class="btn btn-primary"><span class="fa fa-pencil"></span></button></td>
								<td><button type="submit" class="btn btn-info"><span class="fa fa-trash"></span></button></td>
                            </tr>

                            <tr>
								<td>Mauricio</td>
								<td>Molina</td>
								<td>40184763</td>
								<td>204018015</td>
								<td>José c paz</td>
								<td>Calle falsa 768</td>
								<td>1132724000</td>
								<td><button type="submit" class="btn btn-primary"><span class="fa fa-pencil"></span></button></td>
								<td><button type="submit" class="btn btn-info"><span class="fa fa-trash"></span></button></td>
                            </tr>
                            <tr>
								<td>Juan</td>
								<td>Gonzalez</td>
								<td>42184763</td>
								<td>20421847635</td>
								<td>San miguel</td>
								<td>Calle falsa 678</td>
								<td>1132724000</td>
								<td><button type="submit" class="btn btn-primary"><span class="fa fa-pencil"></span></button></td>
								<td><button type="submit" class="btn btn-info"><span class="fa fa-trash"></span></button></td>
                            </tr>
                            
                             <tr>
								<td>Jose</td>
								<td>Rodriguez</td>
								<td>41184763</td>
								<td>20421847635</td>
								<td>San miguel</td>
								<td>Calle falsa 123</td>
								<td>1132724000</td>
								<td><button type="submit" class="btn btn-primary"><span class="fa fa-pencil"></span></button></td>
								<td><button type="submit" class="btn btn-info"><span class="fa fa-trash"></span></button></td>
                            </tr>

                             <tr>
								<td>Homero</td>
								<td>Simpson</td>
								<td>33184763</td>
								<td>20421847635</td>
								<td>Springfiel</td>
								<td>Calle falsa 123</td>
								<td>1132724000</td>
								<td><button type="submit" class="btn btn-primary"><span class="fa fa-pencil"></span></button></td>
								<td><button type="submit" class="btn btn-info"><span class="fa fa-trash"></span></button></td>
                            </tr>
                        </tbody>        
                       </table>                  
                    </div>
                </div>
        </div>  
    </div>     
     
</t:base>
      
    <script src="content/dataTable/jquery/jquery-3.3.1.min.js"></script>
    <script src="content/dataTable/popper/popper.min.js"></script>
    <script src="content/dataTable/bootstrap/js/bootstrap.min.js"></script>
      
    <!-- datatables JS -->
    <script type="text/javascript" src="content/dataTable/datatables/datatables.min.js"></script>    
    <script type="text/javascript" src="content/dataTable/main.js"></script>  