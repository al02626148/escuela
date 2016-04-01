<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sistema de Control Administrativo</title>

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
</head>


        <div class="container">
            <div class="col-lg-12 text-center">
                <h2>Inscripción</h2>
            </div>
        </div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-3"><h3>Ingrese matricula del estudiante.</h3></div>
                <div class="col-md-1"></div>
            </div>
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-3"><input type="text" class="form-control" placeholder="0000000"></div>
                <div class="col-md-3"><button type="button" class="btn btn-default">Ver Lista de Materias</button></div>
                <div class="col-md-1"></div>
            </div>
            <div class="col-lg-12 text-center">
                <h2>Horario</h2>
                <div class="col-lg-5">
                    <table class="table table table-condensed">
                        <caption>Horario</caption>
                        <thead>
                            <tr>
                                <TH>ID Grupo</TH>
                                <th>Lu</th>
                                <th>Ma</th>
                                <th>Mi</th>
                                <th>Ju</th>
                                <th>Vi</th>
                                <th>Salón</th>
                            </tr>
                        </thead>
                    </table>
                </div>
                <div class="col-lg-4">
                    <table class="table table table-condensed">
                        <caption>Materias disponibles</caption>
                        <thead>
                            <tr>
                                <th>Id Curso</th>
                                <th>Nombre del curso</th>
                                <th>Descripción del curso</th>
                                <th></th>
                            </tr>
                        </thead>
                    </table>
                </div>
                <div class="col-lg-3">
                    <table class="table table-condensed">
                        <caption>Grupos</caption>
                        <thead>
                            <tr>
                                <th>ID Grupo</th>
                                <th>Día</th>
                                <th>Hora</th>
                                <th>Cupo</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>

            <div>
                <div class="col-lg-4"></div>
                <div class="col-lg-4"><button type="button" class="btn btn-success btn-lg btn-block">Inscribir materias</button></div>
                <div class="col-lg-4"></div>
            </div>
        </div>


</body>

</html>