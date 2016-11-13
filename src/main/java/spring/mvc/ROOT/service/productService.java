package spring.mvc.ROOT.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import spring.mvc.ROOT.dto.ProductDTO;
import spring.mvc.ROOT.modules.FileWorks;
import spring.mvc.ROOT.repository.productRepository;

@Service
public class productService extends DefaultTransactionDefinition {

	@Autowired
	private productRepository repository;

	@Autowired
	private PlatformTransactionManager tx;

	private TransactionStatus status;

	public int insertOne(ProductDTO dto) {
		status=tx.getTransaction(this);
		int res = 0;
		res=repository.insertOne(dto);
		if(res>0){
			tx.commit(status);
		}else{
			tx.rollback(status);
		}
		return res;
	}

	public List<ProductDTO> selectVege() {
		return repository.selectVege();
	}

	public List<ProductDTO> selectFruit() {
		return repository.selectFruit();
	}

	public List<ProductDTO> selectGrain() {
		return repository.selectGrain();
	}

	public List<ProductDTO> selectMeat() {
		return repository.selectMeat();
	}

	public List<ProductDTO> selectMarine() {
		return repository.selectMarine();
	}

	public List<ProductDTO> selectProcessed() {
		return repository.selectProcessed();
	}

	public ProductDTO selectOne(Integer pronum) {
		return repository.selectOne(pronum);
	}

}
