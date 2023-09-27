<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>500 - Error</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">

<style>
@import url('https://fonts.googleapis.com/css?family=Lato|Roboto+Slab');

* {
  position: relative;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.centered {
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

h1 {
  margin-bottom: 50px;
  font-family: 'Lato', sans-serif;
  font-size: 50px;
}

.message {
  display: inline-block;
  line-height: 1.2;
  transition: line-height .2s, width .2s;
  overflow: hidden;
}

.message,
.hidden {
  font-family: 'Roboto Slab', serif;
  font-size: 18px;
}

.hidden {
  color: #FFF;
}


</style>
<link href="https://fonts.googleapis.com/css?family=Encode+Sans+Semi+Condensed:100,200,300,400" rel="stylesheet">

</head>
<body class="loading">
<section class="centered">
  <h1>500 Server Error</h1>
  <div class="container">
    <span class="message" id="js-whoops"></span> <span class="message" id="js-appears"></span> <span class="message" id="js-error"></span> <span class="message" id="js-apology"></span>
    <div><span class="hidden" id="js-hidden">Message Here</span></div>
        <a href="<%=request.getContextPath() %>/index.jsp" class="login_register login_btn" style="color: var(--link-color); font-size: 1.5rem;">Back to home page</a>
    
  </div>
</section>

<script type="text/javascript">
  $(function()
</script>
</body>
</html>