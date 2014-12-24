<%--
  Created by Sushil Dahal.
  Date: 12/24/14
  Time: 11:24 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>${applicationTitle} - Home</title>
    <meta name="layout" content="main">
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?libraries=places"></script>
    <asset:javascript src="jquery.geocomplete.min.js"/>
    <script type="application/javascript">
    $(document).ready(function(){
        $(".form-control").geocomplete();
    });
    </script>
</head>

<body>

<div class="form-signin">
    <h2 class="form-signin-heading">
        Kun Route
        <g:img dir="images" file="powered-by-google-on-white.png"/>
    </h2>
    <g:form action="getRoute" controller="location">
        <div class="form-group">
            <label for="sourceName" class="sr-only">Source</label>
            <g:textField name="sourceName" class="form-control" placeholder="Source"/>
        </div>

        <div class="form-group">
            <label for="destinationName" class="sr-only">Destination</label>
            <g:textField name="destinationName" class="form-control" placeholder="Destination"/>
        </div>

        <g:submitButton name="findRoute" value="Let's Go" class="btn btn-lg btn-primary btn-block"/>
    </g:form>
</div>

</body>
</html>