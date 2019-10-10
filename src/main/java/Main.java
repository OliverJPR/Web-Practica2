
import classes.Estudiante;
import freemarker.template.Configuration;
import freemarker.template.Template;

import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;

public class Main {
    public static void main(String[] args) {

        ArrayList<Estudiante> estudiantesAnadidos = new ArrayList<>();

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_29);
        configuration.setClassForTemplateLoading(Main.class, "/");

        get("/", (request, response) -> {
            Map<String, Object> est = new HashMap<>();
            Template template = configuration.getTemplate("public/index.ftl");
            StringWriter writer = new StringWriter();
            est.put("estudiantes",estudiantesAnadidos);
            template.process(est,writer);


            return  writer;
        });

        get("/add", (request, response) -> {
            Template template = configuration.getTemplate("public/anadirEstudiante.ftl");
            StringWriter writer = new StringWriter();
            template.process(null,writer);

            return  writer;
        });

        post("/add", (request, response) -> {

            int matricula = Integer.parseInt(request.queryParams("matricula"));
            String nombres = request.queryParams("nombres");
            String apellidos = request.queryParams("apellidos");
            String telefono = request.queryParams("telefono");

            estudiantesAnadidos.add(new Estudiante(matricula,nombres,apellidos,telefono));
            response.redirect("/");


            return  null;
        });

        get("/editar/:matricula", (request, response) -> {
            try {
                StringWriter wr = new StringWriter();
                Map<String, Object> att = new HashMap<>();
                Estudiante e = null;
                Template temp = configuration.getTemplate("public/editarEstudiante.ftl");

                for (Estudiante est : estudiantesAnadidos) {
                    if (est.getMatricula() == Integer.parseInt(request.params("matricula"))) {
                        e = est;
                    }
                }

                if (e == null) {
                    throw new Exception();
                }
                att.put("estudiante", e);
                temp.process(att, wr);

                return wr;

            } catch (Exception error) {
                error.printStackTrace();

                return null;
            }
        });

        post("/editar", (request, response) -> {
            int matricula = Integer.parseInt(request.queryParams("matricula"));
            String nombre = request.queryParams("nombre");
            String apellido = request.queryParams("apellido");
            String telefono = request.queryParams("telefono");



            for (Estudiante e : estudiantesAnadidos) {
                if (e.getMatricula() == matricula) {
                    System.out.println(matricula);
                    System.out.println(nombre
                    );
                    e.setNombre(nombre);
                    e.setApellido(apellido);
                    e.setTelefono(telefono);
                }
            }

            response.redirect("/");

            return null;
        });


        get("/eliminar/:matricula", (request, response) -> {
            StringWriter stringWriter = new StringWriter();
            int matricula = Integer.parseInt(request.params("matricula"));



            for (Estudiante e : estudiantesAnadidos) {
                if (e.getMatricula() == matricula) {
                    System.out.println(e.getMatricula());
                  estudiantesAnadidos.remove(e);
                }
                response.redirect("/");
            }

            return stringWriter;
        });


        get("/ver/:matricula", (request, response) -> {
            try {
                StringWriter wr = new StringWriter();
                Map<String, Object> att = new HashMap<>();
                Estudiante e = null;
                Template temp = configuration.getTemplate("public/verEstudiante.ftl");
                for (Estudiante est : estudiantesAnadidos) {
                    if (est.getMatricula() == Integer.parseInt(request.params("matricula"))) {
                        e = est;
                    }
                }

                if (e == null) {
                    throw new Exception();
                }
                att.put("estudiante", e);
                temp.process(att, wr);

                return wr;

            } catch (Exception error) {
                error.printStackTrace();

                return null;
            }
        });
    }


}
