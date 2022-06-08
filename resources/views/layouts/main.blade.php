<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Style CSS -->
    <link rel="stylesheet" type="text/css" href="slick/slick.css">
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css">

    <!-- Bootstrap  Internal-->
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>

    <!-- Font Google -->
    <link rel="stylesheet" href="../fonts/font-montserrat.css">
    <link rel="stylesheet" href="../css/style.css">

    <!-- Logo tittle bar -->
    <link rel="icon" href="img/Logo.png" type="image/x-icon">
    
    {{-- Icon Bootstrab --}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

    
    <title>Pawonkoe | {{ $title }}</title>

    <style type="text/css">
        .container-1, .slider {
          width: 85%;
          margin: 10px auto;
        }

        .regular .resep {
          width:255px;
          margin: 0 auto;
        }

        #category-name {
          width: 100%;
          padding: 10px 18px;
          margin: 7px 0;
          border-radius:10px;
          border:none;
        }

        #add-category{
          width: 100px;
          line-height: 44px;
          font-size: 15px;
          margin: 7px 0 0 5px;
          color:white;
          background-color: #EAB141;
          border-radius:10px;
          border:none;
        }

        

        #keyword, #keyword3 {
          width: 100%;
          padding: 10px 18px;
          margin: 4px 0;
          border-radius:10px;
          border:none;
          outline-color: #EAB141;
          margin-bottom: 20px;
        }

        #keyword2 {
          border-radius:10px;
          border:none;
          padding: 10px;
          outline-color: #EAB141; 
          margin: 4px 0;          
          margin-bottom: 20px;
        }

        #email, #name, #username{
          width: 100%;
          padding: 10px 18px;
          border-radius: 6px;
          border: 2px solid #EAB141;
          outline-color: #EAB141;         
        }

        #password , #password_confirmation{
          width: 85%;
          padding: 10px 0 10px 18px;
          border-radius: 6px;
          border: none;
          outline: none;

        }

        #title {
          width: 86%;
          padding: 10px 18px;
          margin: 7px 0;
          border-radius:10px;
          border:none;            
        }

        #ingredient, #step, #edit-name, #edit-username, #edit-about {
          width: 95%;
          padding: 10px 18px;
          margin: 7px 0;
          border-radius:10px;
          border:none;
        }

        #edit-category {
            width: 55%;
            padding: 10px 18px;
            border-radius:10px;
            border:none;
            outline-color: #EAB141; 
        }

        #category_id {
          border-radius:5px;
          border:none;
          padding: 10px;
        }

        #edit-resep, #edit-akun {
          margin-right:25px;
        }

        #edit-name, #edit-username, #edit-about {
          width: 100%;
          padding: 10px 18px;
          margin: 7px 0;
          border-radius:10px;
          border:none;
        }

        #category-name, #title, #ingredient, #step, #category_id, #username, #edit-name, #edit-username, #edit-about:focus, #email {
          outline-color: #EAB141;      
        }

        @media only screen and (max-width: 600px) {
          #cari-resep {width: 281px;}
          .container-cari{width:460px;}
        }

        @media only screen and (max-width: 850px) {
          #cari-resep-anda{width:200px;}
        }
        
        .crud ul li a {
          margin-bottom: 100px;
        }

        @media only screen and (max-width:992px) {
          .crud ul li a{margin-bottom: 5px;}
        }

        @media only screen and (min-width:992px) {
          .crud ul li{float: left;} 
        }
        
        @media only screen and (max-width:665px) {
          .show-category{text-align: center;}
        }

        .nav-link{
          color:#C4C4C4!important;
        }
        .active{
          color:#EAB141!important;
        }

    </style>

  </head>
  <body>

    @if($title !== 'Login' && $title !== 'Register' )
      @include('partials.navbar') 
      <div style="margin-top :100px;">
    @else
      <div style="margin-top :25px;">
    @endif
        @yield('container')
      </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Menyisipkan JQuery dan Javascript Bootstrap -->
    <script src="js/bootstrap.min.js"></script>

    <script src="slick/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="slick/slick.js" type="text/javascript" charset="utf-8"></script>
    
    <script type="text/javascript">
      $('textarea').on('input', function () {
        this.style.height = "";
        this.style.height = this.scrollHeight + "px";
      });
    </script>

    <script type="text/javascript">
      $(document).on('ready', function() {
        
        $(".regular").slick({
          dots: false,
          infinite: true,
          slidesToShow: 4,
          slidesToScroll: 1,
          arrows: true,
          prevArrow:"<img class='a-riht control-c prev slick-prev' src='img/panah-kiri.png'>",
          nextArrow:"<img class='a-right control-c next slick-next' src='img/panah-kanan.png'>",
          responsive: [
          {
            breakpoint: 1350,
            settings: {
              slidesToShow: 3,
              slidesToScroll: 1,
            }
          },
          {
            breakpoint: 1000,
            settings: {
              slidesToShow: 2,
              slidesToScroll: 1
            }
          },
          {
            breakpoint: 665,
            settings: {
              slidesToShow: 1,
              slidesToScroll: 1
            }
          }
          ]
        });
      });
    </script>

    <script>
      function previewImage(){
          const image = document.querySelector('#picture');
          const imgPreview = document.querySelector('.img-preview');

          imgPreview.style.display = 'block';

          const oFReader = new FileReader();
          oFReader.readAsDataURL(image.files[0]);

          oFReader.onload = function(oFREvent){
              imgPreview.src = oFREvent.target.result;
          }
      }  
    </script>
 
  </body>
</html>
    