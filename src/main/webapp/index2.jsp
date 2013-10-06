<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario2</title>

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


            <form class="form-horizontal" id="formIngreso2" name="f1" action="" method="post">

                <div class="control-group">
                    <label class="control-label">Tu nombre</label>
                    <div class="controls">
                        <input type="text" name="nombre" placeholder="Ingresa tu nombre">
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label">Tu sistema favorito</label>
                    <div class="controls">
                        <select name="sistema">
                            <option>Linux</option>
                            <option>Windows</option>
                            <option>MAc</option>
                        </select>
                    </div>
                </div>


                <div class="control-group">
                    <label class="control-label">Te gusta el fútbol</label>
                    <div class="controls">
                        <input type="checkbox" value="">
                    </div>
                </div>


                <div class="control-group">
                    <label class="control-label">¿Cuál es tu sexo?</label>
                    <div class="controls">
                        <input type="radio" name="sexo" value="M"> Hombre
                    </div>
                    <div class="controls">
                        <input type="radio" name="sexo" value="F"> Mujer
                    </div>

                    <div class="controls">
                        <label class="error" for="sexo"></label>
                    </div>



                </div>


                <div class="control-group">
                    <label class="control-label">Aficiones</label>
                    <div class="controls">

                        <textarea name="aficion" rows="4"></textarea>
                    </div>
                </div>


                <div class="control-group">
                    <div class="btn-toolbar">
                        <button class="btn">Enviar datos</button>
                        <button class="btn">Restablecer</button>
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
                $('#formIngreso2').validate({
                    rules: {
                        nombre: {required: true},
                        sistema: {required: true},
                        sexo: {required: true},
                        aficion: {required: true}
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