<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <nav class="navbar navbar-light bg-light">
        <span class="navbar-brand mb-0 h1">Listado de Estudiantes</span>
    </nav>

</head>
<body>
<div class="container">
    <div class="col">
        <a href="/add">
        <button type="button" class="btn btn-success material-icons" >&#xE147;</button>
        </a>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Matricula</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Telefono</th>
                <th>Acciones</th>


            </tr>
            </thead>
            <tbody>
            <#list estudiantes as e>
            <tr>
               <td>${e.matricula?long?c}</td>
                <td>${e.nombre}</td>
                <td>${e.apellido}</td>
                <td>${e.telefono}</td>

                <td><a href="/ver/${e.matricula?long?c}"><button type="button" class="btn btn-info material-icons">&#xE417;</button></a>
                    <a href="/editar/${e.matricula?long?c}"><button type="button" class="btn btn-warning material-icons">&#xE254;</button></a>
                     <a href="/eliminar/${e.matricula?long?c}"><button  type="button" class="btn btn-danger material-icons">&#xE872;</button></a>
                </td>


            </tr>
            </#list>
            </tbody>

        </table>
    </div>
</div>
</body>
</html>