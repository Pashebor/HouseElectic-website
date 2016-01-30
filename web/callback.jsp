
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<html>
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <link href="css/callback.css" rel="stylesheet" type="text/css">
  <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
  <script src="js/site.min.js" type="text/javascript" charset="utf-8"></script>

  <script>
    $(function() {
      $('input, textarea').placeholder();
    });
  </script>


  <script language="JavaScript" type="text/JavaScript">
    function validate() {

      var errors = 0;

      if(document.form4.a_Name.value.length < 1) {alert('Please Enter Your Name');errors++;}
      if(document.form4.b_Phone.value.length < 1) {alert('Please Enter Your Phone Number');errors++;}
      if(document.form4.c_Email.value.length < 1) {alert('Please Enter Your Email Address');errors++;}

      if(errors == 0)
        return true;
      else return false;
    }
  </script>

</head>

<body>
<div id="Container">
  <div id="Content">

    <div id="CallBack">
      <h1>Заказать обратный вызов</h1>


      <form id="Enquire" name="form4" method="post" onsubmit="return validate()" action="/add">
        <!--<input name="mailTo" value="info@transformelectrics.com.au" type="hidden">
        <input value="http://www.transformelectrics.com.au/files/callbackthanks.html" name="returnTo" type="hidden">
        <input value="emailForm" name="screen" type="hidden">
        <input value="false" name="showAll" type="hidden">-->


        <div class="left">
          <input name="a_Name" size="25" maxlength="50" placeholder="Имя *"  type="text">
        </div>
        <div class="right">
          <input name="b_Phone" size="25" maxlength="50" placeholder="Телефон *" type="text">
        </div>
        <div class="clear"></div>

        <div class="email">
          <input name="c_Email" size="25" maxlength="50" placeholder="Почта *"  type="text">
        </div>
        <div class="clear"></div>

        <div class="left">
          <input name="d_Best_Contact_Times" size="25" maxlength="50" placeholder="Лучшее время для связи с Вами" type="text">
        </div>



        <div class="right">
          <input class="button" name="email" value="Отправить запрос" type="submit">
        </div>
        <div class="clear"></div>
        <div class="left"><span>* Обязательные поля</span></div>

      </form>
    </div>

  </div>
</div>
</body>
</html>
