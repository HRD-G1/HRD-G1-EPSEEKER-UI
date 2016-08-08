<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	<!--bootstrap css-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/expert/bootstrap-3.3.6-dist/css/bootstrap.min.css"/>
        <!--font awesome-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/expert/font-awesome-4.6.3/css/font-awesome.min.css"/>

        <!--[*my CSS*] for general uses for only detail page-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/expert/css/detail.css"/>

        <!-- Sweet Alert  -->
        <%-- <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resource/dist/sweetalert.css">
        <script type="text/javascript" src="${pageContext.request.contextPath }/resource/sweetalert.min.js"></script> --%>

        <!--bootstrap modal-->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <!--bootstrap modal-->

        <!--AngularJS-->
        <script src="${pageContext.request.contextPath }/resources/expert/angularjs/angular.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/expert/angularjs/myapplication.js"></script>
        <!--AngularJS-->

        <!--Progress Bar-->
        <script src="${pageContext.request.contextPath }/resources/expert/js/progressbar.js"/>

        <!--Date Picker-->
        <!--formden.js communicates with FormDen server to validate fields and submit via AJAX -->
        <script type="text/javascript" src="https://formden.com/static/cdn/formden.js"></script>
        


        <!-- Inline CSS based on choices in "Settings" tab -->
        <style>
            .bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form{
                font-family: Arial, Helvetica, sans-serif; color: black
            }
            .bootstrap-iso form button, .bootstrap-iso form button:hover
            {color: white !important;
            } 
            .asteriskField{
                color: red;
            }
        </style>
	
</head>
<body>
	<%-- <jsp:include page="fragements/nav/header-navigation.jsp"></jsp:include> --%>
	
	<jsp:include page="fragements/detail/EpDetail.jsp"></jsp:include>
	
	<!-- Include Date Range Picker -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
</body>
</html>