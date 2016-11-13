package spring.mvc.ROOT;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import spring.mvc.ROOT.dto.MemberDTO;
import spring.mvc.ROOT.dto.ZipcodeDTO;
import spring.mvc.ROOT.service.MemberService;


@Controller
public class MemberController {

	@Autowired
	private MemberService service;
	
	private String msg;
	
	@RequestMapping(value="MemInsertForm", method=RequestMethod.GET)
	public void go(){}
	
	@RequestMapping(value="MemInsertForm", method=RequestMethod.POST)
	public String insertOne(MemberDTO dto){
		
		dto.setAddress(dto.getAddress1()+ "-"+dto.getAddress2() + "-" + dto.getAddress3());
		dto.setEmail(dto.getEmail1() + "@" + dto.getEmail2());
		
		String textdate = dto.getYear() + "-" + dto.getMon() + "-" + dto.getDay();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		
		try {
			Date date = sdf.parse(textdate);
			dto.setBirthday( new java.sql.Date(date.getTime()));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		dto.setPhone(dto.getPhone1() + "-" + dto.getPhone2() + "-" + dto.getPhone3());
		
		int res = service.insertOne(dto);
		
		
		return "home";
		
	}
	
	@RequestMapping("showPopup")
	public void showPopup(){
		
	}
	
	@RequestMapping(value="zipcodelist")
	public ModelAndView zipcodelist(String target){
		ModelAndView mav = new ModelAndView();
		
		List<ZipcodeDTO> zip = service.ZipcodeSelect(target);
		
		mav.addObject("zip", zip);
		mav.setViewName("showPopup");
		
		return mav;
		
	}
	
	@RequestMapping("MemLogin")
	public void MemLogin(){
		
		
	}
	
	@RequestMapping(value = "selleridcheck", produces = "text/plain; charset=UTF-8")
	@ResponseBody
	public String sellerlog(HttpServletRequest request) {

		String id = request.getParameter("key");
		List<Object> listc = service.selleridcheck(id);

		Pattern ptnId = Pattern.compile("^[a-zA-Z]{1}[a-zA-Z0-9]{5,11}$");
		Matcher mtrId = ptnId.matcher(id);

		if (listc.size() == 0 && id.length() > 0) {
			if (mtrId.matches()) {
				msg = "0";
			} else {
				msg = "1";
			}
		} else if (id.isEmpty() && listc.size() <= 0) {
			msg = "1";
		} else {
			msg = "2";
		}
		System.out.println(msg);

		return msg;
	}
	
	@RequestMapping("login")
	public ModelAndView login(MemberDTO dto, HttpServletResponse response){
		ModelAndView mav = new ModelAndView();
		
		MemberDTO adto = service.login(dto);
		
		mav.addObject("nowLogin", adto.getId());
		mav.setViewName("home");
		
		Cookie ck = new Cookie("IdRemember", adto.getId());
		response.addCookie(ck);
		
		return mav;
		
	}
	
	
	
	
}
