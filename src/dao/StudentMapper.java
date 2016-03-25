package dao;
import java.sql.ResultSet;  
import java.sql.SQLException;  
import org.springframework.jdbc.core.RowMapper;  
  
public class StudentMapper implements RowMapper<Student> {  
  
    public Student mapRow(ResultSet rs, int rownum) throws SQLException {  
        Student student = new Student();  
        student.setId(rs.getString("ID"));  
        student.setName(rs.getString("name"));  
        student.setAge(rs.getInt("age"));  
        student.setFm(rs.getString("FM"));  
          
        return student;       
    }  
      
}  