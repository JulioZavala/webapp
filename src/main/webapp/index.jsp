<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>

        <style>
            body {
                padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
            }
        </style>


        <link href="public/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="public/app/css/form.css" rel="stylesheet" media="screen">
        <link href="public/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
    </head>

    <body>


        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="brand" href="#">Project name</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </div>

        <div class="container">

            <h1>EJEMPLO DE FORMULARIO</h1>
            <p>Este es un ejemplo de formulario</p>

            <form class="form-horizontal" id="formIngreso" name="f1" action="" method="post">

                <div class="control-group">
                    <label class="control-label">Nombre</label>
                    <div class="controls">
                        <input type="text" name="nom" placeholder="Ingresa tu nombre">
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label">Clave</label>
                    <div class="controls">
                        <input type="password" name="clave" placeholder="Ingresa tu clave">
                    </div>
                </div>

                <div class="control-group">
                    <div class="controls">

                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </div>
                </div>

            </form>

        </div> <!-- /container -->



        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="public/bootstrap/js/bootstrap.min.js"></script>
        <script src="public/jvalidate/jquery.validate.min.js"></script>
        <script src="public/jvalidate/messages_es.js"></script>
        <script>
            $(function() {
                $('#formIngreso').validate({
                    rules: {
                        nom: {required: true},
                        clave: {required: true}
                    },
                    
                    
                    highlight: function(element) {
                        $(element).closest('.control-group').removeClass('success').addClass('error');
                    },
                    success: function(element) {
                        element
                                .text('OK!').addClass('valid')
                                .closest('.control-group').removeClass('error').addClass('success');
                    }
                    
                });
            });

        </script>


    </body>

</html>



