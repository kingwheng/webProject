package spring.mvc.ROOT.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import spring.mvc.ROOT.dto.MemberDTO;
import spring.mvc.ROOT.dto.ZipcodeDTO;
import spring.mvc.ROOT.repository.MemberRepository;


@Service
public class MemberService extends DefaultTransactionDefinition{

	@Autowired
	private MemberRepository repository;
	
	@Autowired
	private PlatformTransactionManager tx;
	private TransactionStatus status;
	
	public int insertOne(MemberDTO dto) {
		
		status = tx.getTransaction(this);
		
		int res = repository.insertOne(dto);
		
		if(res > 0 ){
			tx.commit(status);
		}else{
			tx.rollback(status);
		}
		
		return res;
	}

	public List<ZipcodeDTO> ZipcodeSelect(String target) {

		return repository.ZipcodeSelect(target);
		
	}
	
	public List<Object> selleridcheck(String id) {
	      
	      return repository.selleridcheck(id);
	      
	   }

	public MemberDTO login(MemberDTO dto) {
		return repository.login(dto);
	}
	
}
