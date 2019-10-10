<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <nav class="navbar navbar-light bg-light">
        <span class="navbar-brand mb-0 h1">Editar Estudiante</span>
    </nav>

</head>
<body>
<form class="container" action="/editar" method="post">
    <div class="form-row">
        <div class="col-md-4 mb-3">
            <label for="formGroupExampleInput">Matricula</label>
            <input name="matricula" type="text" class="form-control" id="exampleInputEmail1" readonly value="${estudiante.matricula?long?c}">
        </div>
    </div>
    <div class="form-row" >
        <div class="col-md-6 mb-3">
            <label for="formGroupExampleInput2">Nombres</label>
            <input name="nombre" type="text" class="form-control" id="exampleInputPassword1" value="${estudiante.nombre}">
        </div>
        <div class="col-md-6 mb-3">
            <label for="formGroupExampleInput2">Apellidos</label>
            <input name="apellido" type="text" class="form-control" id="exampleInputPassword1" value="${estudiante.apellido}">
        </div>
    </div>
    <div class="form-group">
        <label for="formGroupExampleInput2">Telefono</label>
        <input name="telefono" type="tel" class="form-control" id="exampleInputPassword1" value="${estudiante.telefono}">
    </div>
    <button type="submit" class="btn btn-primary">Editar</button>

</form>

</body>
</html>