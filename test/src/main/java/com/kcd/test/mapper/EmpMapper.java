package com.kcd.test.mapper;

import com.kcd.test.entity.EmpVo;

public interface EmpMapper {

	public EmpVo selectEmp(EmpVo empVo);
	public void insertEmp(EmpVo empVo);

}