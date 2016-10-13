package com.yeon.emailDaoTest;

import java.util.List;

import com.yeon.email.EmailDao;
import com.yeon.email.EmailVo;

public class EmailDaoTest {

	public static void main(String[] args) {
		getListTest();
	}
	
	public static void getListTest(){
		EmailDao dao = new EmailDao();
		List<EmailVo> list = dao.getList();
		for(EmailVo evo : list){
			System.out.println(evo);
		}
	}
	
	public static void insertTest(){
		EmailDao dao = new EmailDao();
		EmailVo evo = new EmailVo();
		evo.setLastName("고");
		evo.setFirstName("마이콜");
		evo.setEmail("michol@gmail.com");
		dao.Insert(evo);
	}
	
}
