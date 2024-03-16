package springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.User;

@Repository
public class userDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;


	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}


	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}


	@Transactional
	public int saveUser(User user) {
		String q = "insert into User (id,email,name,password) values(?,?,?,?)";
		int id = this.jdbcTemplate.update(q,user.getId(),user.getEmail(),user.getName(),user.getPassword());
		return id;
	}

	public List<User> getUsers(){    
		return jdbcTemplate.query("select * from springjdbc",new RowMapper<User>(){    
			@Override
			public User mapRow(ResultSet rs, int row) throws SQLException {    
				User e =new User();
				e.setId(rs.getInt(1));
				e.setName(rs.getString(3));
				e.setEmail(rs.getString(2));
				e.setPassword(rs.getString(4));
				return e;    
			}    
		});    
	}    

}
