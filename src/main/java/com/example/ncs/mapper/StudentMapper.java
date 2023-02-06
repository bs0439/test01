package com.example.ncs.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.ncs.vo.StudentVO;

@Mapper
public interface StudentMapper {
	
	public int loginCheck(StudentVO stu);
	
	public void regMember(StudentVO stu);
	
	public int studentCheck(StudentVO stu);
	
	public int idCheck(String id);
}
