<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<head>
    <nav class="navbar navbar-light bg-light">
        <span class="navbar-brand mb-0 h1">Ver Estudiante</span>
    </nav>
</head>

<div class="container">
    <div class="row">
        <div class="col-xs-0 col-sm-4 col-md-4">
            <div class="well well-sm">
                <div class="row">
                    <div class="col-sm-6 col-md-8">
                        <h4>
                            ${estudiante.nombre} ${estudiante.apellido}</h4>

                        <p>
                            <i class="glyphicon glyphicon-user"></i> ${estudiante.matricula?long?c}
                            <br />
                            <i class="glyphicon glyphicon-earphone"></i> ${estudiante.telefono}

                        <div class="btn-group">
                            <a href="/editar/${estudiante.matricula?long?c}"><button type="button" class="btn btn-warning">Editar</button></a>
                            <a href="/eliminar/${estudiante.matricula?long?c}"><button type="button" class="btn btn-danger" >Eliminar</button></a>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
