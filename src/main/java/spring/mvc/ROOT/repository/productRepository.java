package spring.mvc.ROOT.repository;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.ROOT.dto.ProductDTO;

@Repository
public class productRepository {

	@Autowired
	private SqlSessionTemplate sqlsesssiontemplate;
	
	public int insertOne(ProductDTO dto) {
		return sqlsesssiontemplate.update("Mapper.insertOne",dto);
	}

	public List<ProductDTO> selectVege() {
		return sqlsesssiontemplate.selectList("Mapper.selectVege");
	}

	public List<ProductDTO> selectProcessed() {
	return sqlsesssiontemplate.selectList("Mapper.selectProcessed");
	}

	public List<ProductDTO> selectMarine() {
		return sqlsesssiontemplate.selectList("Mapper.selectMarine");
	}

	public List<ProductDTO> selectMeat() {
		return sqlsesssiontemplate.selectList("Mapper.selectMeat");
	}

	public List<ProductDTO> selectGrain() {
		return sqlsesssiontemplate.selectList("Mapper.selectGrain");
	}

	public List<ProductDTO> selectFruit() {
		return sqlsesssiontemplate.selectList("Mapper.selectFruit");
	}

	public ProductDTO selectOne(Integer pronum) {
		return sqlsesssiontemplate.selectOne("Mapper.selectOne",pronum);
	}

}
