package org.judy.common.security.mapper;

import java.util.List;

import org.judy.common.security.domain.MemberVO;

public interface MemberMapper {
	
	List<MemberVO> read(String mid);
	
	

}
