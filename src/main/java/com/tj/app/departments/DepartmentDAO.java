package com.tj.app.departments;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DepartmentDAO implements DepartmentMapper {

	@Autowired
	private SqlSession session;

	private final String NAMESPACE = "com.tj.app.departments.DepartmentDAO.";

	@Override
	public List<DepartmentDTO> list() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(NAMESPACE+"list");
	}

	@Override
	public DepartmentDTO detail(DepartmentDTO departmentDTO) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(NAMESPACE+"detail", departmentDTO);
	}

	@Override
	public int create(DepartmentDTO departmentDTO) throws Exception {
		// TODO Auto-generated method stub
		return session.insert(NAMESPACE+"create", departmentDTO);
	}

	@Override
	public int update(DepartmentDTO departmentDTO) throws Exception {
		// TODO Auto-generated method stub
		return session.update(NAMESPACE+"update", departmentDTO);
	}

	@Override
	public int delete(DepartmentDTO departmentDTO) throws Exception {
		// TODO Auto-generated method stub
		return session.delete(NAMESPACE+"delete", departmentDTO);
	}
}
