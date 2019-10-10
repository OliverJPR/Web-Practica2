<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <nav class="navbar navbar-light bg-light">
        <span class="navbar-brand mb-0 h1">Anadir Estudiante</span>
    </nav>

</head>
<body>
<form class="container" method="post">
    <div class="form-row">
    <div class="col-md-4 mb-3">
        <label for="formGroupExampleInput">Matricula*</label>
        <input name="matricula" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Introduzca Matricula" required>
    </div>
    </div>
    <div class="form-row" >
    <div class="col-md-6 mb-3">
        <label for="formGroupExampleInput2">Nombres*</label>
        <input name="nombres" type="text" class="form-control" id="exampleInputPassword1" placeholder="Introduzca Nombres" required>
    </div>
    <div class="col-md-6 mb-3">
        <label for="formGroupExampleInput2">Apellidos*</label>
        <input name="apellidos" type="text" class="form-control" id="exampleInputPassword1" placeholder="Introduzca Apellidos" required>
    </div>
    </div>
    <div class="form-group">
        <label for="formGroupExampleInput2">Telefono</label>
        <input name="telefono" type="tel" class="form-control" id="exampleInputPassword1" placeholder="Introduzca Telefono">
    </div>
    <button type="submit" class="btn btn-primary">Anadir</button>

</form>

</body>
</html>