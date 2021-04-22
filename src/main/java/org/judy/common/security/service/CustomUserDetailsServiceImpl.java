package org.judy.common.security.service;

import java.util.ArrayList;
import java.util.List;

import org.judy.common.security.domain.MemberVO;
import org.judy.common.security.mapper.MemberMapper;
import org.judy.manager.domain.Manager;
import org.judy.store.domain.Store;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailsServiceImpl implements UserDetailsService{

	@Autowired
	private MemberMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		log.warn("userName : " + username);
			
		List<MemberVO> memberList = mapper.read(username);
		
		log.info(memberList);
		
		  List<Store> storeList = new ArrayList<>();
		  
		  Manager manager = null;
		  for (MemberVO memberVO : memberList) { 
			  Store store = Store.builder().sno(memberVO.getSno()).build();
			  storeList.add(store);
			  manager = Manager.builder().mid(memberVO.getMid()).storeList(storeList).build();
			  }
		  log.info(manager);
		 
		return null;

	}
}
