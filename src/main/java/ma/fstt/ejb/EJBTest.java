package ma.fstt.ejb;

import ma.fstt.model.Student;

import javax.naming.NamingException;
import java.util.List;

public class EJBTest {

    public static void main(String[] args) throws NamingException {
        StudentRemote studentRemote = StudentRemoteEJB.getStudentRemote();

        Student student = new Student(0L, "Boukir", "Achraf", "135355657", "Tangier", "Master");
        studentRemote.save(student);

        List<Student>  students = studentRemote.findAll();
        System.out.println(students);

        System.out.println("Done.");

    }


}
