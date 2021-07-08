<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- FONTAWESOME : https://kit.fontawesome.com/a23e6feb03.js -->
    <link rel="stylesheet"   href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.  5/jquery.mCustomScrollbar.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="content/nav/style.css">
	<link rel="stylesheet" href="content/nav/prueba.css">
	
    <script src="content/nav/icons.js"></script>
    
    <!-- SweetAlert2 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.5.1/main.min.css">
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.5.1/main.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.5.1/locales-all.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.all.min.js"></script>
	
    <title>Sidebar + Navbar</title>
  </head>
  <body>
    
  <nav class="navbar navbar-expand-lg navbar-light blue fixed-top">
    <button id="sidebarCollapse" class="btn navbar-btn">
      <i class="fas fa-lg fa-bars"></i>
    </button>
    <a class="navbar-brand" href="">
      <h3 id="logo">Banco-UTN</h3>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse"   data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"  aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link" id="link" href="#">
          <i class="fas fa-sign-out-alt"></i>
          Cerrar sesion<span class="sr-only">(current) </span></a>
        </li>
        <!--
        <li class="nav-item">
          <a class="nav-link" id="link" href="#">
          <i class="fas fa-id-card"></i>Contact Us</a>
        </li>
        -->
      </ul>
    </div>
  </nav>

  <div class="wrapper fixed-left">
    <nav id="sidebar">
      <div class="sidebar-header">
        <h3><i class="fas fa-user"></i>${usuario.cliente.nombre} ${usuario.cliente.apellido}</h3>
      </div>

      <ul class="list-unstyled components">
        <li>
         	<a href=""><i class="fas fa-home"></i>Inicio</a>
        </li>
        <li>
          	<a href="altaCliente.html"><i class="fas fa-user-cog"></i>Alta Cliente</a>
        </li>
        <li>
       		<a href="altaCuenta.html"><i class="fas fa-hands-helping"></i>Alta cuenta</a>          
        </li>
        <li>
          	<a href="listadoCuentas.html"><i class="fas fa-clipboard"></i>Listado Cuentas</a>
        </li>
        <li>
          	<a href="listadoClientes.html"><i class="fa fa-address-book"></i>Listado Clientes</a>
        </li>
        <li>
          	<a href=""><i class="fas fa-info"></i>About</a>
        </li>
      </ul>
    </nav>

    <div id="content" class="content">
			<jsp:doBody/>
    </div>
   
  </div>
    
    <c:if test="${!empty success}">
	    <script>
			Swal.fire({
			  icon: 'success',
			  title: 'Atenci�n',
			  text: '${success}',
			});
		</script>
	</c:if>
    
    <c:if test="${!empty info}">
	    <script>
			Swal.fire({
			  icon: 'info',
			  title: 'Atenci�n',
			  text: '${info}',
			});
		</script>
	</c:if>
    
    <c:if test="${!empty error}">
	    <script>
			Swal.fire({
			  icon: 'error',
			  title: 'Ups...',
			  text: '${error}',
			});
		</script>
	</c:if>
	
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="content/nav/script.js"></script>
  </body>
</html>


