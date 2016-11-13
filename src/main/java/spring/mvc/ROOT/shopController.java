package spring.mvc.ROOT;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.ROOT.dto.ProductDTO;
import spring.mvc.ROOT.modules.FileWorks;
import spring.mvc.ROOT.service.productService;

@Controller
@RequestMapping("shop/")
public class shopController {
	private String basePath = "/WEB-INF/views/shop/";

	@Autowired
	private FileWorks fileworks;

	@Autowired
	private productService service;

	@RequestMapping(value = { "home", "insertForm","test" })
	public String go(ModelMap mmap, HttpServletRequest request) {
		String svlPath = request.getServletPath();
		String mainView = svlPath.replaceAll("/shop/", "");
		mmap.addAttribute("main", basePath + mainView + ".jsp");
		return "home";
	}

	@RequestMapping(value="List")
	public ModelAndView List (@RequestParam("largectg") String largectg){
		ModelAndView mav=new ModelAndView();
		List<ProductDTO> listc=null;
		if(largectg.equals("vege")){
			listc=service.selectVege();
		}else if(largectg.equals("fruit")){
			listc=service.selectFruit();
		}else if(largectg.equals("grain")){
			listc=service.selectGrain();
		}else if(largectg.equals("meat")){
			listc=service.selectMeat();
		}else if(largectg.equals("marine")){
			listc=service.selectMarine();
		}else if(largectg.equals("processed")){
			listc=service.selectProcessed();
		}
		mav.addObject("listc",listc);
		mav.addObject("main","shop/productList.jsp");
		mav.setViewName("home");
		return mav;
	}
	
	@RequestMapping(value = "insertOne", method = RequestMethod.POST)
	public ModelAndView insertOne(MultipartHttpServletRequest mulreq) {
		ModelAndView mav = new ModelAndView();
		ProductDTO dto = new ProductDTO();
		dto.setName(mulreq.getParameter("name"));
		dto.setLargecategory(mulreq.getParameter("largecategory"));
		dto.setSmallcategory(mulreq.getParameter("smallcategory"));
		dto.setLaunchdate(mulreq.getParameter("launchdate"));
		dto.setExpireddate(mulreq.getParameter("expireddate"));
		dto.setPrice(Integer.parseInt(mulreq.getParameter("price")));
		dto.setFrom(mulreq.getParameter("from"));
		dto.setStock(Integer.parseInt(mulreq.getParameter("stock")));
		dto.setDelcharge(Integer.parseInt(mulreq.getParameter("delcharge")));
		dto.setOptions(mulreq.getParameter("options"));
		dto.setText(mulreq.getParameter("text"));
		dto.setDelop(mulreq.getParameter("delop"));
		dto.setDelinfo(mulreq.getParameter("delinfo"));
//		setSeller();
		MultipartFile tn = mulreq.getFile("tn");
		String tn_sysname = fileworks.uploadAndGetSysName(tn);
		dto.setTn_orgname(tn.getOriginalFilename());
		dto.setTn_sysname(tn_sysname);

		MultipartFile d1 = mulreq.getFile("d1");
		String d_1_sysname = fileworks.uploadAndGetSysName(d1);
		dto.setD_1_orgname(d1.getOriginalFilename());
		dto.setD_1_sysname(d_1_sysname);

		MultipartFile d2 = mulreq.getFile("d2");
		if(d2!=null){
		String d_2_sysname = fileworks.uploadAndGetSysName(d2);
		dto.setD_2_orgname(d2.getOriginalFilename());
		dto.setD_2_sysname(d_2_sysname);
		}else{
			dto.setD_2_sysname("null");
			dto.setD_2_orgname("null");
		}
		
		MultipartFile d3 = mulreq.getFile("d3");
		if(d3!=null){
		String d_3_sysname = fileworks.uploadAndGetSysName(d3);
		dto.setD_3_orgname(d3.getOriginalFilename());
		dto.setD_3_sysname(d_3_sysname);
		}else{
			dto.setD_3_sysname("null");
			dto.setD_3_orgname("null");
		}
		
		MultipartFile d4 = mulreq.getFile("d4");
		if(d4!=null){
		String d_4_sysname = fileworks.uploadAndGetSysName(d4);
		dto.setD_4_orgname(d4.getOriginalFilename());
		dto.setD_4_sysname(d_4_sysname);
		}else{
			dto.setD_4_sysname("null");
			dto.setD_4_orgname("null");
		}
		int res = service.insertOne(dto);
		String msg = res > 0 ? "저장 완료" : "저장 실패";
		mav.addObject("msg", msg);
		mav.addObject("main", "shop/home.jsp");
		mav.setViewName("home");
		return mav;
	}

	@RequestMapping(value = "selectOne", method = RequestMethod.GET)
	public ModelAndView selectOne(@RequestParam("pronum") Integer pronum) {
		ModelAndView mav = new ModelAndView();
		ProductDTO dto=service.selectOne(pronum);
		mav.addObject("dto",dto);
		mav.addObject("main","shop/selectOne.jsp");
		mav.setViewName("home");
		return mav;
	}

}
