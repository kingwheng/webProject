package spring.mvc.ROOT.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.ROOT.dto.MemberDTO;
import spring.mvc.ROOT.dto.ZipcodeDTO;

@Repository
public class MemberRepository {

	@Autowired
	private SqlSessionTemplate sqlSessiontemplate;

	public int insertOne(MemberDTO dto) {
		return sqlSessiontemplate.insert("Mapper.memInsert", dto);
	}

	public List<ZipcodeDTO> ZipcodeSelect(String target) {
		
		return sqlSessiontemplate.selectList("Mapper.ZipcodeSelect", target);
		
	}
	
	public List<Object> selleridcheck(String id) {
	      
	      return sqlSessiontemplate.selectList("Mapper.idckeck",id);
	      
	      
	   }

	public MemberDTO login(MemberDTO dto) {
		return sqlSessiontemplate.selectOne("Mapper.login", dto);
	}
	
}
