package indi.wrenn.studentsystem.dao;

public interface JdbcConfig {
    String DRIVER = "com.mysql.jdbc.Driver";
    String URL = "jdbc:mysql://localhost:3306/StudentSystemDao?useUnicode=true&characterEncoding=utf8";
/*    String URL = "jdbc:mysql://localhost:3306/StudentSystemDao";*/
    String USERNAME = "root";
    String PASSWORD = "root";
}
