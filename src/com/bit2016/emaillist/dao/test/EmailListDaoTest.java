package com.bit2016.emaillist.dao.test;

import java.util.List;

import com.bit2016.emaillist.dao.EmailListDao;
import com.bit2016.emaillist.vo.EmailListVo;

public class EmailListDaoTest {

	public static void main(String[] args) {
//		insertTest();
		getListTest();
		
	}

	public static void getListTest() {
		EmailListDao dao = new EmailListDao();
		List<EmailListVo> list = dao.getList();
		for (EmailListVo vo : list) {
			System.out.println(vo);
		}
	}
	
	public static void insertTest() {
		EmailListVo vo = new EmailListVo();
		vo.setLastName("고");
		vo.setFirstName("마이콜");
		vo.setEmail("michol@gmail.com");
		
		EmailListDao dao = new EmailListDao();
		dao.insert(vo);
	}
}
