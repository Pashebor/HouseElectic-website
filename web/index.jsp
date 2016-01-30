<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <title>Хаус Электрик</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width; initial-scale=1; maximum-scale=1;">
  <meta name="keywords" content="Хаус Электрик, electrical, electricity, electrical products "/>
  <meta name="description" content="Хаус Электрик осуществляет поставку и установку широкого спектра электротехнической продукции."/>
  <meta name="msapplication-TileImage" content="houses/house1">
  <style>a,abbr,acronym,address,applet,b,big,blockquote,body,center,cite,code,dd,del,dfn,div,dl,dt,em,fieldset,font,form,h1,h2,h3,h4,h5,h6,html,i,iframe,ins,kbd,label,legend,object,p,pre,q,s,samp,small,span,strike,strong,sub,sup,tt,u,var{margin:0;padding:0;border:0;outline:0;background:0 0}img{margin:0;padding:0;outline:0}body{line-height:1}blockquote,q{quotes:none}blockquote:after,blockquote:before,q:after,q:before{content:'';content:none}:focus{outline:0}ins{text-decoration:none}del{text-decoration:line-through}table{border-collapse:collapse;border-spacing:0}img{border:0}.clear{clear:both}.absolute{position:absolute}input,select,textarea{border-radius:0;border:1px solid #ccc;background:#fff;box-sizing:border-box}input,textarea{-webkit-appearance:none}</style>
  <link href="css/style.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" id="smallCSS" media="(max-width:700px)" type="text/css" href="css/small.css">
  <link rel="icon" type="image/ico" href="houses/house1.png">
  <link rel="apple-touch-icon" href="houses/house1.png">
  <link href='http://fonts.googleapis.com/css?family=Lato:400,700,300,100' rel='stylesheet' type='text/css'>
  <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
  <script defer  src="js/site.min.js"></script>
  <script src="js/logohouse.js"></script>
  <script defer src="js/fancybox.min.js"></script>
  <style>
    @font-face {
      font-family: 'FontAwesome';
      src: url('fonts/fontawesome-webfont.eot');
      src: url('fonts/fontawesome-webfont.eot?#iefix') format('embedded-opentype'), url('fonts/fontawesome-webfont.woff') format('woff'), url('fonts/fontawesome-webfont.ttf') format('truetype'), url('fonts/fontawesome-webfont.svg#fontawesomeregular') format('svg');
      font-weight: normal;
      font-style: normal;
    }

    a{
      text-decoration: none;
    }
  </style>
</head>
<body>

<!--Скрипт домика-->
<script type="text/javascript">
  $(document).ready(function(){
    executeChanging();
  });
</script>
<!--///////////-->
<script>
  $(document).ready(function(){

    $('.flicker-example').flicker({
      auto_flick: true,
      auto_flick_delay: 5,
      theme: 'light',
      // flick_animation: "transform-slide"
      // flick_animation: "transition-slide"
      // flick_animation: "jquery-slide"
      flick_animation: "transition-fade"
      // flick_animation: "jquery-fade"
    });
  });
  /*Наведение на иконку телефона и цифры*/
  $(document).ready(function(){
    $(".phone").mouseenter(function(){
      $("#iconPhone").css("background","white");
    });
    $(".phone").mouseleave(function(){
      $("#iconPhone").css("background", "#EFD241");
    });
  });
</script>



<script type="text/javascript">
  /*Скрипт поворачивания сендвича в мобильном меню*/
  /*$(document).ready(function(){
   $("#navToggle").click(function(){
   $(".navicon").toggleClass("naviconClicked");
   });
   });*/
  $(document).ready(function() {
    var flag = true;
    $("#navToggle").click(function() {
      if(flag){
        $(".navicon").css({
          "animation-duration": "0.3s",
          "animation-name" : "rotating"
        });
        $(".navicon").css({
          "-moz-transform": "rotate(90deg)",
          "-o-transform": "rotate(90deg)",
          "-webkit-transform": "rotate(90deg)"
        });
        flag = false;
      }else {
        $(".navicon").css({
          "animation-duration": "0.3s",
          "animation-name" : "rotatingBack"
        });

        $(".navicon").css({
          "-moz-transform": "rotate(0deg)",
          "-o-transform": "rotate(0deg)",
          "-webkit-transform": "rotate(0deg)"
        });
        flag = true;
      }
    });
  });

  /*/////////////*/

  $(document).ready(function(){
    //DROP DOWN CODE
    $('.enquire-trigger').click(function () {
      $('#enquire-dropdown').slideToggle(500, function () {		// CHANGE 'slow' to 'fast' if you want it faster or use a number without ' ' 1000=1sec
        // Animation complete.
      });
    });


    //CALLBACK CODE
    $('a.fancybox-media')
            .attr('rel', 'media-gallery')
            .fancybox({
              openEffect : 'fade',
              closeEffect : 'fade',
              prevEffect : 'none',
              nextEffect : 'none',
              arrows : false,
              helpers : {
                media : {},
                buttons : {}
              }
            });
  });


  // JAVASCRIPT VALIDATION MUST NOT BE FORM2
  function validate2() {

    var errors = 0;

    if(document.form3.a_Name.value.length < 1) {alert('Введите ваше ФИО');errors++;}
    if(document.form3.b_Phone.value.length < 1) {alert('Введите адрес вашей почты');errors++;}
    if(document.form3.c_Email.value.length < 1) {alert('Введите номер телефона');errors++;}

    if(errors == 0)
      return true;
    else return false;
  }


</script>




<div id="enquire-dropdown">
  <div class="container">
    <a class="enquire-trigger closeBtn" href="#"> Х Закрыть</a>


    <!----  ONLINE ENQUIRY ------>
    <div class="mceNonEditable">
      <form action="/addQuest" method="post" name="form3" onsubmit="return validate2()"><input type="hidden" name="screen" value="emailForm" /><input type="hidden" name="mailTo" value="info.houseelectric@mail.ru" /><input type="hidden" name="returnTo" value="/../thank_you.html" /><input type="hidden" name="showAll" value="false" />
        <div id="enquiry">
          <div class="enqHeader">Вопрос онлайн</div>
          <div class="enqRow">
            <div class="enqLeft">Имя *</div>
            <div class="enqRight"><input type="text" name="a_Name" maxlength="250" /></div>
          </div>
          <div class="enqRow">
            <div class="enqLeft">Телефон *</div>
            <div class="enqRight"><input type="text" name="b_Phone" maxlength="250" /></div>
          </div>
          <div class="enqRow">
            <div class="enqLeft">Почта *</div>
            <div class="enqRight"><input type="text" name="c_Email" maxlength="250" /></div>
          </div>
          <div class="enqRow">
            <div class="enqLeft">Вопрос</div>
            <div class="enqRight"><textarea name="ZZ_Comments"></textarea>
              <div>* Обязательные поля</div>
            </div>
          </div>
          <div class="enqRow"><input class="button" type="submit" name="email" value="Отправить" /></div>
        </div>
        <!--    <input type="hidden" name="__ncforminfo" value="XwJvm64TBxI31WZQf2Nn8WTYND6DuN_mhM_oBH_8iQH-YYbPLp9ArjjVMJpWkHauyp62kKqv9gi4KeqHYzDUsRk8HTroaXTSUb7s3uvWPPwXiE3kb-VWFq2V71RMs1xUNuqkun0mVPjcAxUNz-VXdu-BJKSo6oFX8gm5hUNAtNAS56bClSkG77IUZZPuRiLS"/>
        --></form>
    </div>
    <!---- END ONLINE ENQUIRY ------>
    <div class="dropContact">
      <h1>Связязь с нами</h1>


      <!----  CONTACT DETAILS ------>
      <p><strong>Телефон</strong></p>
      <p>8(930) 069 40 49 </p>
      <p> </p>
      <p><strong>Почта</strong></p>
      <p><a href="mailto:info.houseelectric@mail.ru" target="_blank">info.houseelectric@mail.ru</a></p>
      <p> </p>
      <!--<p><strong>Fax</strong></p>
      <p>03 9399 9358 </p>
      <p> </p>
      --><p><strong>Адрес</strong></p>
      <p>улица Загородная</p>
      <p>город Рязань</p>
      <p>дом 22 корпус 4 </p>
      <!----  CONTACT DETAILS ------>


    </div>

  </div>
</div>
<div id="absoDiv1" class="absolute"></div>
<div id="absoDiv2" class="absolute"></div>
<div id="absoDiv3" class="absolute"></div>
<div class="siteTop">
  <section id="banner">
    <div class="container">
      <a href="../forBor"><div id="logo">
        <table>
          <tr>
            <td><p class="logoTextHouse">Хаус</p></td>
            <td><img src="houses/house1.png"  alt=""  id="image" style="margin-left: -55px"/></td>
            <td><p class="logoTextElectric">Электрик</p></td>
          </tr>
        </table>
      </div></a>

      <div class="bannerRight">
        <div class="contact">
          <p class="tagline">Свяжитесь с нами</p>
          <a href="tel: 8 930 069 40 49"><p class="phone"><img src="img/phone.png" class="styleImgPhone" id="iconPhone" />8 930 069 40 49</p></a>
          <a href="mailto:info.houseelectric@mail.ru">info.houseelectric@mail.ru</a>
        </div>
        <div class="ultimate">
          <a class="enquiry enquire-trigger"></a>
          <a class="fancybox-media fancybox.iframe callback" href="callback.jsp" rel="media-gallery"></a>
        </div>
      </div>
    </div>
  </section>
  <section id="menu">
    <!----  MENU FOR FULL WEBSITE ------>
    <nav>
      <li ><a  class="current" href="../"><span>Главная</span></a></li>
      <li class="parent"><a href="about_us"><span>О нас</span><span class="Chevron"></span></a>
        <ul>
          <div class="subContainer">
            <!--<li  ><a href="construction.html"><span>Конструкции</span></a></li>-->
            <li ><a href="about_us/how_we_works.html"><span>Как мы работаем</span></a></li>
          </div>
        </ul>
      </li>
      <li  class="parent"><a href="services"><span>Сервис</span><span class="Chevron"></span></a>
        <ul>
          <div class="subContainer">
            <!--<li  ><a href="construction.html"><span>Конструкции</span></a></li>-->
            <li ><a href="services/maintenance.html"><span>Виды работ</span></a></li>
          </div>
        </ul>
      </li>
      <li  class="parent"><a href="projects"><span>Проекты</span><span class="Chevron"></span></a>
        <ul>
          <div class="subContainer">
            <li ><a href="projects"><span>Проектная документация</span></a></li>
            <!-- <li ><a href="present.html"><span>Настоящее</span></a></li>-->
          </div>
        </ul>
      </li>
      <li ><a href="tenders"><span>Тендеры</span></a></li>
      <li ><a href="partners"><span>Партнеры</span></a></li>
      <li ><a href="contacts"><span>Контакты</span></a></li>
    </nav>
    <!----  END MENU FOR FULL WEBSITE ------>
  </section>
  <section id="mobileMenu">
    <!----  MENU FOR MOBILE WEBSITE ------>
    <div id="navToggle"><p class="navicon"></p></div>
    <nav>
      <li id="link0"><a href="../forBor"><span>Главная</span></a></li>
      <li id="link2" class="parent">
        <span>О Нас</span>
        <ul>
          <div class="subContainer">
            <li  id="sublink8"><a href="about_us"><span>О Нас</span></a></li>
            <!--<li  id="sublink4"><a href="construction.html"><span>Конструкции</span></a></li>-->
            <li  id="sublink9"><a href="about_us/how_we_works.html"><span>Как мы работаем</span></a></li>
          </div>
        </ul>
      </li>
      <li id="link3"  class="parent" >
        <span>Сервис</span>
        <ul>
          <div class="subContainer">
            <li  id="sublink3"><a href="services"><span>Сервис</span></a></li>
            <!--<li  id="sublink4"><a href="construction.html"><span>Конструкции</span></a></li>-->
            <li  id="sublink5"><a href="services/maintenance.html"><span>Виды работ</span></a></li>
          </div>
        </ul>
      </li>
      <li id="link6"  class="parent" >
        <span>Проекты</span>
        <ul>
          <div class="subContainer">
            <li  id="sublink6"><a href="projects"><span>Проекты</span></a></li>
            <li  id="sublink7"><a href="projects"><span>Проектная доументация</span></a></li>
            <!--<li  id="sublink8"><a href="present.html"><span>Настоящее</span></a></li>-->
          </div>
        </ul>
      </li>
      <li id="link9" >
        <a href="tenders"><span>Тендеры</span></a>
      </li>
      <li id="link10" >
        <a href="partners"><span>Партнеры</span></a>
      </li>
      <li id="link1">
        <a  href="contacts"><span>Контакты</span></a>
      </li>
    </nav>
    <!----  END MENU FOR MOBILE WEBSITE ------></section>
  <section id="subBannerHome" ><div class="container">
    <div class="flicker-example" data-block-text="false">
      <ul>
        <li data-background="img/city2.jpg"></li>
        <li data-background="img/montage.jpg"></li>
        <li data-background="img/montage4.jpg"></li>
        <li data-background="img/montage3.png"></li>
        <li data-background="img/city3.jpg"></li>
        <li data-background="img/montage2.png"></li>
        <li data-background="img/city.jpg"></li>

      </ul>
    </div>
    <div id="callbacks"><a href="tel:03 9399 9415" class="phone"><span>Позвонить Нам</span> </a>
      <a href="contact.html" class="email"><span>Написать</span> </a>
      <a href="https://www.google.com.au/maps/place/3%2F17-19+Orange+St,+Williamstown+North+VIC+3016/@-37.853044,144.864997,17z/data=!3m1!4b1!4m2!3m1!1s0x6ad661363364c625:0x65d0f9b2c6406584" target="_blank" class="address"><!--<span><img src="img/marker.png" alt="" style="margin-bottom: -5px;"></span>-->
        <span>Найти Нас</span> </a></div></div>
  </section>
</div>
<div class="siteBottom">
  <!--<div id="outerSidebar">
      <div class="item">
          <a class="overlayImg" rel="sidebar" href="/thumbnaillarge/_sidetext.gif">
              <div class="contentImg image" style="background:url('thumbnailsmall/_sidetext.gif')"></div>
          </a>
          <div class="caption"></div>
      </div>
  </div>-->
  <!--  START CONTENT AREA -->
  <div class="contentWrap contentPagesWrap">

    <section class="textSection" id="section1">

      <div class="container">
        <!-- <div class="sidebar">

             <div class="item">
                 <a class="overlayImg" rel="sidebar" href="/thumbnaillarge/_sidetext.gif">
                     <div class="contentImg image" style="background:url('thumbnailsmall/_sidetext.gif')"></div>
                 </a>
                 <div class="caption"></div>
             </div>
         </div>-->
        <div class="siteContent">
          <div class="contentCopy">
            <div id="buttons">
              <div class="butFrame" onclick="window.location='about_us'">
                <div class="butText">О Нас</div>
                <div class="butImage"><img src="img/otvertka.jpg" alt="" /></div>
              </div>
              <div class="butFrame" onclick="window.location='services'">
                <div class="butText">Сервис</div>
                <div class="butImage"><img src="img/vnutrennie-seti.jpg" alt="" /></div>
              </div>
              <div class="butFrame" onclick="window.location='projects'">
                <div class="butText">Проекты</div>
                <div class="butImage"><img src="img/floor.jpg" alt="" /></div>
              </div>
              <div class="butFrame" onclick="window.location='partners'">
                <div class="butText">Партнеры</div>
                <div class="butImage"><img src="img/osvechenie.jpg" alt="" /></div>
              </div>
            </div></div>
        </div>
      </div>
    </section>
    <section class="textSection" id="section2">

      <div class="container">

        <div class="siteContent">
          <div class="contentCopy">
            <h1 style="text-align: center;">Мы проводим электромонтажные работы «под ключ». Oт проекта до сдачи объекта в эксплуатацию. Вся работа проводится по всем нормам: быстро, качественно и эффективно.</h1>
            <h3 style="text-align: center;">Наша команда будет рада ответить на любые вопросы, связанные с оборудованием и технологией проведения работ.</h3></div>
        </div>
      </div>
    </section>
    <!-- START SHOPPING ITEMS -->
    <!-- END SHOPPING ITEMS -->
    <br>
    <br>
  </div>
  <!--  END CONTENT AREA -->
</div>
<!----  FOOTER ------>
<footer>
  <div id="footerBottom">
    <div class="container">
      <nav>
        <li><a id="link0b" href="/">Главная</a></li>
        <li><a id="link2b" href="about_us">О Нас</a></li>
        <li><a id="link3b" href="services">Сервис</a></li>
        <li><a id="link6b" href="projects">Проекты</a></li>
        <!--<li><a id="link9b" href="tenders.html">Tenders</a></li>-->
        <li><a id="link10b" href="partners">Партнеры</a></li>
        <li><a id="link1b" href="contacts">Контакты</a></li>
      </nav>
      <div class="footerRight">
        <div class="copyright">&copy; Права принадлежат Хаус Электрик&nbsp;2015</div>
        <div class="havealook"><a href="http://www.havealook.com.au" target="_blank">Дизайн Вебсайта </a> от pashebor's laba</div>
      </div>
    </div>
  </div>
</footer>
<!----  END FOOTER ------>



<!--<a href="#" id="toTop" style="display: block;">
    <span id="toTopHover" style="opacity: 0;"></span>
    "To Top"
</a>-->

</body>
</html>


