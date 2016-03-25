package dao;

import java.util.List;  

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;  


public class StudentDaoImp implements StudentDao{  

  private DataSource datasource;  
  private JdbcTemplate jdbcTemplateObject;  
    
    
  public void setDatasource(DataSource ds) {  
      this.datasource = ds;  
      this.jdbcTemplateObject = new JdbcTemplate(datasource);       
  }  

  public void addstudent(Student student) {  
      String sql = "INSERT INTO java.student(id,name,age,fm)VALUES(?,?,?,?)";  
		jdbcTemplateObject.update(sql, student.getId(),student.getName(),student.getAge(),student.getFm());
  }  

  public void delstudentbyID(String id) {  
      String sql = "DELETE FROM java.student WHERE id=?";  
      jdbcTemplateObject.update(sql,id);  
      return ;  
  }  

  public void delstudentbyname(String name) {  
      String sql = "DELETE FROM java.student WHERE name=?";  
      jdbcTemplateObject.update(sql,name);  
      return ;          
  }  

  public void delallstudent() {  
      String sql = "DELETE FROM java.student";  
      jdbcTemplateObject.update(sql);  
      return ;      
  }  

  public void updstudent(Student student) {  
      String sql = "UPDATE java.student set name=?,age=?,fm=? WHERE id=?";  
      jdbcTemplateObject.update(sql,student.getName(),  
              student.getAge(),student.getFm(),student.getId());  
      return ;  
  }  

  public List<Student> allstudent() {  
      List<Student> students = null;  
      String sql = "SELECT * FROM java.student";  
      students = jdbcTemplateObject.query(sql, new StudentMapper());  
      return students;  
  }  

  public List<Student> querystudentbyID(String id) {  
      List<Student> students = null;  
      String sql = "SELECT * FROM java.student WHERE id=?";  
      students = jdbcTemplateObject.query(sql, new Object[]{id}, new StudentMapper());  
      return students;  
  }  

  public List<Student> querystudentbyname(String name) {  
      List<Student> students = null;  
      String sql = "SELECT * FROM java.student WHERE name=?";  
      students = jdbcTemplateObject.query(sql, new Object[]{name}, new StudentMapper());  
      return students;  
  }  

  public List<Student> querystudentbyage(int age) {  
      List<Student> students = null;  
      String sql = "SELECT * FROM java.student WHERE age=?";  
      students = jdbcTemplateObject.query(sql, new Object[]{age}, new StudentMapper());  
      return students;  
  }  
    
  public void displayall(){  
      List<Student> students = allstudent();  
      for(Student s : students){  
          s.display();  
      }  
  }  
    
    
}  