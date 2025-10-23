<%-- 
    Document   : index
    Created on : 14 oct. 2025, 19:58:41
    Author     : morfeo
--%>

    <%@page import="nodelo.Autobus"%>
<%--
<%
    String usuario = "";
    HttpSession sesionOk = request.getSession();
    if (sesionOk.getAttribute("usuario") == null) {
<jsp:forward page="login.jsp">
    <jsp:param name="error" value="Es obligatorio identificarse"/>
</jsp:forward>
%>
--%>

<%@ page import="controlador.AutobusDAO, nodelo.Autobus, java.util.*" %>
<%--
<%
    } else {
        usuario = (String) sesionOk.getAttribute("usuario");
    }
%>

 
     Usuario: <%= usuario   %>

--%>
<%
    AutobusDAO dao = new AutobusDAO();
    List<Autobus> lista = dao.listar();
%>
<html>
    <head>
        <title>Pagina  Gonzalez Aplicacion WEB AUTOBUSES </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-----------------------------BOOTSTRAP----------------------------->
                <!--Icono-->
                <link rel="Icon" type="img/png" href="img/logoicono.png">
                <!-- Google font -->
                <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
                <!-- Bootstrap -->
                <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
                <!-- Slick -->
                <link type="text/css" rel="stylesheet" href="css/slick.css"/>
                <link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
                <!-- nouislider -->
                <link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
                <!-- Font Awesome Icon -->
                <link rel="stylesheet" href="css/font-awesome.min.css">
                <!-- Custom stlylesheet -->
                <link type="text/css" rel="stylesheet" href="css/style.css"/>
                <!--Ventanas emergentes-->
                <link rel="stylesheet" type="text/css" href="css/ventanas.css">
<!-----------------------------/BOOTSTRAP----------------------------->
    </head>
    <body>
        <!-- HEADER -------------------------------------------------------------------->
                <header>
                        <!-- MAIN HEADER -->
                        <div id="header">
                                <!-- container -->
                                <div class="container">
                                        <!-- row -->
                                        <div class="row">

                                                <!-- LOGO -->
                                                <div class="col-md-9">
                                                        <div class="header-logo">
                                                                <a href="#" class="logo">
                                                                        <img src="./img/logoTUVCH.png" alt="">
                                                                </a>
                                                        </div>
                                                </div>
                                                <!-- /LOGO -->



                                                <!-- ACCOUNT -->
                                                <div class="col-md-3 clearfix">
                                                        <div class="header-ctn">
                                                                <div class="container">
                                                                <ul class="header-links pull-right">                
                                                                <li><a href="index.html"><i class="fa fa-user-o"></i>Iniciar Sesión</a></li>
                                                                <li><a href="rGeneral.jsp"><i class="fa fa-check"></i>Registrarme</a></li>
                                                                </ul>

                                                                </div>

                                                                <!-- Menu Toogle -->
                                                                <div class="menu-toggle">
                                                                        <a href="#">
                                                                                <i class="fa fa-bars"></i>
                                                                                <span>Menu</span>
                                                                        </a>
                                                                </div>
                                                                <!-- /Menu Toogle -->
                                                        </div>
                                                </div>
                                                <!-- /ACCOUNT -->
                                        </div>
                                        <!-- row -->
                                </div>
                                <!-- container -->
                        </div>
                        <!-- /MAIN HEADER -->
                </header>
<!-- /HEADER ------------------------------------------------------------------->


<!-- NAVIGATION ---------------------------------------------------------------->
                <nav id="navigation">
                        <!-- container -->
                        <div class="container">
                                <!-- responsive-nav -->
                                <div id="responsive-nav">
                                        <!-- NAV -->
                                        <ul class="main-nav nav navbar-nav">
                                                <li><a href="index.html">Inicio</a></li>
                                                <li><a href="buscar.jsp">Buscar</a></li>
                                                <li><a href="catalogo.jsp">Catálogo</a></li>
                                                <li><a href="#openModal">Acerca de</a>
                                                    <div id="openModal" class="modalDialog">
                                                                                                <div id="contenidomod">
                                                                                                        <a href="#close" title="Close" class="close">X</a>
                                                                                                        <br><h1>Biblioteca Banorte</h1>
                                                                                                        <p>Somos una unidad ubicada dentro del Tecnológico Universitario del Valle de Chalco, con el único propósito de brindar a la comunidad estudiantil las herramientas necesarias para su desarrollo profesional.</p>
                                                                                                        <p>Para más información llámanos a los telefonos:<br>
                                                                                                        ? 55-555-5555-5<br>
                                                                                                        ? 555-555-555-4</p>
                                                                                                </div></li>
                                        </ul>
                                        <!-- /NAV -->
                                </div>
                                <!-- /responsive-nav -->
                        </div>
                        <!-- /container -->
                </nav>
<!-- /NAVIGATION --------------------------------------------------------------->
    <center><h2>Lista de empleados</h2></center>
<a href="formulario.jsp">Agregar nuevo</a>


<br>
        <div class="container">
            <center>
             
                <div class="thumbnail">
                   
                </div>
                <h4>LISTA OFICIAL DE USARIOS DE SISTEMA</h4>
                <br>
            </center>  
           
               
                <div class="row col-md-12" >
                <table class="table table-striped table-bordered table-hover" style="text-align: center">
                    <thead>
                        <tr>
                            <th style="text-align: center">CODIGO</th>
                            <th style="text-align: center">MARCA</th>
                            <th style="text-align: center">MODELO</th>
                            <th style="text-align: center">NUMASIENTOS</th>
                            <th style="text-align: center">HORARIO</th>
                           
                           
                            <th style="text-align: center">Operaciones</th>
                            <th style="text-align: center">Operaciones</th>
                        </tr>
                    </thead>
                    <%
                        for (Autobus a : lista) { // inicia for
                    %>
                    <tbody>
                        <tr>
                            <td><%= a.getCodigo()%></td>
                            <td><%= a.getMarca()%></td>
                            <td><%= a.getModelo()%></td>
                            <td><%= a.getNumAsientos()%></td>
                            <td><%= a.getHorario()%></td>
                            <td><a class="btn btn-primary" href="eliminar.jsp?id=<%= a.getCodigo() %>">Eliminar</a></td>
                            <td><a class="btn btn-info" href="editar.jsp?id=<%= a.getCodigo()%>">Editar</a></td>
                        </tr>
                    </tbody>
                    <%
                        }//termina for
                    %>
                </table>
                          
            </div>
                         
        </div>    
                         
    <center>  <h4>Fecha y hora del sistema : <%= new java.util.Date() %></h4></center>   
 <!--   
<table border="1" cellpadding="5">
 <tr><th>ID</th><th>Nombre</th><th>Apellido</th><th>Correo</th><th>Salario</th><th>Fecha Ingreso</th><th>Acciones</th></tr>-->
<%//for (Empleado e : lista) {%>
<!--
<tr>
    <td><%//= //e.getId() %></td>
    <td><%//= //e.getNombre() %></td>
    <td><%//= //e.getApellido() %></td>
    <td><%//= //e.getCorreo() %></td>
    <td><%//= //e.getSalario() %></td>
    <td><%//= //e.getFechaIngreso() %></td>
    <td>
        <a href="eliminar.jsp?id=<%//= e.getId() %>">Eliminar</a>
        <a href="editar.jsp?id=<%//= e.getId() %>">Editar</a>
    </td>
</tr>
<%//}%>
</table>
-->
<br>
<a href="logout.jsp">Cerrar sesión</a>
<!-- FOOTER -------------------------------------------------------------------->
                <footer id="footer">
                         <div class="section">
                <!-- container -->
                <div class="container">
                    <!-- row -->
                    <div class="row">
                        
                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Contáctanos</h3>
                                <p>Tecnológico Universitario del Valle de Chalco</p>

                                <ul class="footer-links">
                                        <li><i class="fa fa-map-marker"></i>Av. Tezozómoc s/n, Colonia Alfredo Baranda, Valle de Chalco, Edo. de Méx. </li>
                                        <li><i class="fa fa-phone"></i>1708 5959</li>
                                        <li><i class="fa fa-envelope-o"></i>kenia.ayala@tuvch.ibero.mx</li>
                                </ul>
                            </div>

                        </div>

                        
                        <div class="clearfix visible-xs"></div>
                        
                        <div class="col-md-3 col-xs-6">
                            <div class="footer">
                                <h3 class="footer-title">Acerca de</h3>
                                <ul class="footer-links">
                                    <li><a href="#openModal">Nosotros</a>
                                            <div id="openModal" class="modalDialog">
                                                                                                <div id="contenidomod">
                                                                                                        <a href="#close" title="Close" class="close">X</a>
                                                                                                        <br><h1>Biblioteca Banorte</h1>
                                                                                                        <p>Somos una unidad ubicada dentro del Tecnológico Universitario del Valle de Chalco, con el único propósito de brindar a la comunidad estudiantil las herramientas necesarias para su desarrollo profesional.</p>
                                                                                                        <p>Para más información llámanos a los telefonos:<br>
                                                                                                        ? 55-555-5555-5<br>
                                                                                                        ? 555-555-555-4</p>
                                                                                                </div>
                                                                                        </div></li>
                                    <li><a href="#openModa2">Horarios</a>
                                            <div id="openModa2" class="modalDialog">
                                                                                                <div id="contenidomod">
                                                                                                        <a href="#close" title="Close" class="close">X</a>
                                                                                                        <br><h1>Horarios de atención</h1>
                                                                                                        <p>La Biblioteca Banorte cuenta con los 
                                                                                                        siguientes horarios:</p>
                                                                                                        <p>De lunes a viernes de 7:00 hrs a 18:00 hrs</p>
                                                                                                </div>
                                                                                        </div></li>
                                    <li><a href="http://www.tecvalledechalco.edu.mx/Documentos/Legales/Aviso-de-Privacidad-Integral-Version-Final.pdf" target="back">Avisos de privacidad</a></li>
                                                </ul>
                                         </div>
                                     </div>

                 <div class="col-md-3 col-xs-6">
                 <div class="footer"style="display: inline-block;">
                                <br><br><img src="img/logibero.png" style="display: inline-block;" width="250px">
                                
                  </div>      
                 </div>
                 <div class="col-md-3 col-xs-6">
                 <div class="footer"style="display: inline-block;">
                                <br><img src="img/logsuj.png" style="display: inline-block;" width="250px">
                                
                  </div> 
          </div>
                    <!-- /row -->
                </div>
                <!-- /container -->
            </div>
            <!-- /top footer -->

                        <!-- bottom footer -->
                        <div id="bottom-footer" class="section">
                                <div class="container">
                                        <!-- row -->
                                        <div class="row">
                                                <div class="col-md-12 text-center">
                                                        <span class="copyright">
                                                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                                        </span>
                                                </div>
                                        </div>
                                                <!-- /row -->
                                </div>
                                <!-- /container -->
                        </div>
                        <!-- /bottom footer -->
                </footer>
<!-- /FOOTER ------------------------------------------------------------------>
        
     <!-- jQuery Plugins -->
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
                <script src="js/slick.min.js"></script>
                <script src="js/nouislider.min.js"></script>
                <script src="js/jquery.zoom.min.js"></script>
                <script src="js/main.js"></script>
              
                <script type="text/javascript" src="js/municipios.js"></script>
                    <script type="text/javascript" src="js/select_estados.js"></script>
               
    </body>
</html>








