<%@ page import="com.example.smartcity.service.algoritmo.Location" %>
<%@ page import="com.example.smartcity.service.algoritmo.Nodo" %>
<%--
  Created by IntelliJ IDEA.
  User: carmine
  Date: 31/03/23
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" type="image/x-icon" href="img/wallpaperCar.jpg" />
    <!-- Bootstrap Icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
    <!-- SimpleLightbox plugin CSS-->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/stylePrenotazione.css">
    <link rel="stylesheet" type="text/css" href="CSS/styleMap.css" />
    <script type="module" src="js/jsMap.js"></script>
    <script type="module" src="TySc/tyS.ts"></script>

    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <link rel="stylesheet" href="img">

    <title>ApPost - Prenotazione</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="index.jsp">ApPost</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
                aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto my-2 my-lg-0">
                <li class="nav-item"><a class="nav-link" href="userHomePage.jsp">Torna alla Home</a></li>
                <li class="nav-item"><a class="nav-link" href="logout">Esci</a></li>
            </ul>
        </div>
    </div>
</nav>

    <header class="masthead">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="my-5 card bg-light mx-auto" style="width:30rem;">
                        <div class="card-body">
                            <div id="map"></div> <!-- Qua esce la mappa-->
                        </div>
                    </div>
                </div>
                <div class="col-md-5 col-md-offset-5" style="width:50rem;">
                        <div class="card-body">
                            <div class="form-container">
                                <form class="form-horizontal" action="${pageContext.request.contextPath}/PathServlet" method="post">
                                    <div class="form-group">
                                        <label  name = "start">Partenza </label>
                                        <select required class= "form-control" name="start">
                                            <option value="">--select--</option>
                                                <% Location start = new Location();
                                                    for(Nodo nodo:start.getStart()){
                                                %>
                                                <option type="hidden" name="start" value="<%=nodo.getIndirizzo() %>"> <%=nodo.getIndirizzo()%></option>
                                                <%
                                                    }%>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label name = "dest">Destinazione</label>
                                        <select required class= "form-control" name="dest">
                                            <option value="">--select--</option>
                                                <%
                                                    for(Nodo nodo:start.getEnd()){
                                                %>
                                                <option type="hidden" name="dest" value="<%=nodo.getIndirizzo() %>"> <%=nodo.getIndirizzo()%></option>
                                                <%
                                                    }%>
                                        </select>
                                    </div>
                                    <input type="hidden" name="id">
                                    <button type="submit" class="btn btn-primary btn-lg ">Cerca Percorso</button>
                                </form>
                        </div>
                        </div>
                </div>
            </div>
        </div>
            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA23kxKNlGB1Gw7UQdz4zbemqIZSG93JUQ&callback=initMap"></script>
    </header>


<!--Footer-->
<!-- Footer-->
<footer class="bg-light py-5">
    <div class="container px-4 px-lg-5">
        <div class="small text-center text-muted">
            Copyright &copy; 2023 - Company Name
        </div>
    </div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- SimpleLightbox plugin JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>




</body>
</html>
