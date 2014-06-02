<!DOCTYPE html>
<%
response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
response.setHeader("Pragma","no-cache"); //HTTP 1.0
response.setDateHeader ("Expires", 0);
%>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
<%@ include file="/WEB-INF/jsp/common/includeScripts.jsp" %>
	<title><tiles:insertAttribute name="title" flush="true"/></title>

     <!-- ++++++++++++++++++++++++++++++++++++
         IE conditionals, do not remove
         REQUIRED FOR HTML5 SUPPORT IN IE7/8 -->
   		 <!--[if lt IE 7]>
         	<link rel="stylesheet" type="text/css" media="screen" href="css/ie-7-down.css">
         <![endif]-->
    	 <!--[if lt IE 9]>
        	<script src="js/html5shiv.js"></script>
        	<script src="js/placeholders.min.js"></script>
        	<link rel="stylesheet" type="text/css" media="screen" href="css/ie-8-down.css">
    	 <![endif]-->
    <!--+++++++++++++++++++++++++++++++++++++-->

</head>
<body onclick="clearSuccessMessage();">
<div class="fluid_container_16">
    <header>
    		<tiles:insertAttribute name="header" flush="true"/>
    </header>
    <div id="wrapper" class="fluid_width">

        <nav class="left-nav-list grid_3">
			<tiles:insertAttribute name="menu" flush="true"/>
        </nav>

      <section class="content grid_13">
			<tiles:insertAttribute name="body" flush="true"/>
      </section>

    </div><!--end wrapper div-->
    <div class="push"></div><!-- clears container div for footer -->
</div><!--end container div-->

<footer>
	<nav class="bottom-nav">
		<tiles:insertAttribute name="footer" flush="true"/>
	</nav>
</footer>
</body>
</html>
