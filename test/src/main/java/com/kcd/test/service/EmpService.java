package com.kcd.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.kcd.test.entity.EmpVo;
import com.kcd.test.mapper.EmpMapper;

@Service
@Transactional(propagation = Propagation.REQUIRED)
public class EmpService {

	@Autowired
	private EmpMapper empMapper;

	public EmpVo selectEmp(EmpVo empVo) {
		return empMapper.selectEmp(empVo);
	}

}
