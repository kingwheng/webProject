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
		return sqlsesssiontemplate.update("productMapper.insertOne",dto);
	}

	public List<ProductDTO> selectVege() {
		return sqlsesssiontemplate.selectList("productMapper.selectVege");
	}

	public List<ProductDTO> selectProcessed() {
	return sqlsesssiontemplate.selectList("productMapper.selectProcessed");
	}

	public List<ProductDTO> selectMarine() {
		return sqlsesssiontemplate.selectList("productMapper.selectMarine");
	}

	public List<ProductDTO> selectMeat() {
		return sqlsesssiontemplate.selectList("productMapper.selectMeat");
	}

	public List<ProductDTO> selectGrain() {
		return sqlsesssiontemplate.selectList("productMapper.selectGrain");
	}

	public List<ProductDTO> selectFruit() {
		return sqlsesssiontemplate.selectList("productMapper.selectFruit");
	}

	public ProductDTO selectOne(Integer pronum) {
		return sqlsesssiontemplate.selectOne("productMapper.selectOne",pronum);
	}

}
