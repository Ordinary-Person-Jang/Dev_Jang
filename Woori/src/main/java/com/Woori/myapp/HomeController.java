package com.Woori.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Locale.Category;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

import com.Woori.Dto.BandListDto;
import com.Woori.Dto.UserDto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private final WooriDao dao;
	final HttpSession session;
	// myInfo 세션에 저장하기 위함 -> 리스트와 키워드검색 전환시 model.attribute 사용시 데이터를 가져오지못함

	@Autowired
	public HomeController(WooriDao dao, HttpSession session) {
		this.session = session;
		this.dao = dao;
	}

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate);

		return "woori";
	}

	/*
	 * @RequestMapping("lobby") //주소줄 list?id=test public String bandlist(String id,
	 * Model model) { session.setAttribute("MyId", id);
	 * model.addAttribute("bandlist", dao.getList()); //방 리스트 가져오는 메소드
	 * //bandlist.jsp페이지 검색어 bandmid / 870번째줄(jstl을 사용해 출력)
	 * session.setAttribute("myInfo", dao.myInfo(id)); //내정보 가져오는 메소드 세션에 저장, 세션에
	 * 존재하는동안은 페이지 전환시 추가로 어트리뷰트 할 필요가 없음 //bandlist.jsp페이지 검색어 mypage_mid/ 902번째줄
	 * session.setAttribute("noticeList", dao.noticeList());
	 * 
	 * return "bandlist"; }
	 */

	@RequestMapping("lobby") // 주소줄 list?id=test
	public String Lobby(Model model) {
		model.addAttribute("bandlist", dao.getList());
		// 방 리스트 가져오는 메소드
		// bandlist.jsp페이지 검색어 bandmid / 870번째줄(jstl을 사용해 출력)
		session.setAttribute("myInfo", dao.myInfo((String) session.getAttribute("MyId")));
		// 내정보 가져오는 메소드 세션에 저장, 세션에 존재하는동안은 페이지 전환시 추가로 어트리뷰트 할 필요가 없음
		// bandlist.jsp페이지 검색어 mypage_mid/ 902번째줄
		session.setAttribute("noticeList", dao.noticeList());
		session.removeAttribute("Category");
		return "bandlist";
	}

	@RequestMapping("list") // 주소줄 list?id=test
	public String bandlist(Model model) {
		model.addAttribute("bandlist", dao.getList());
		session.removeAttribute("Category");
		return "bandlist";
	}
	//추가
	@RequestMapping("MyGroupList") // 주소줄 list?id=test
	public String myGroupList(Model model) {
		model.addAttribute("bandlist", dao.myGroupList((String)session.getAttribute("MyId")));
		session.removeAttribute("Category");
		return "bandlist";
	}
	//추가
	@RequestMapping("CategoryBandList") // 주소줄 list?id=test
	public String CategoryBandList(Model model) {
		session.setAttribute("Category", "1");
		model.addAttribute("bandlist", dao.CategoryBandList((String)session.getAttribute("Category")));
		
		return "bandlist";
	}
	
	@RequestMapping("searchBand") // 키워드검색 클릭 안됨 -> Enter
	public String searchBand(String search, Model model) {
		if(session.getAttribute("Category")==null) {
		model.addAttribute("bandlist", dao.searchBand(search));
		// 키워드 검색 메소드
		// bandlist.jsp페이지 검색어 bandmid / 870번째줄
		// 밴드리스트와 출력하는 결과물의 차이일뿐 UI의 차이는 없기때문에 같은 페이지 재활용
		// myinfo는 처음 접속시 세션에 남아있기때문에 생성하지 않음
		}else {
			model.addAttribute("bandlist", dao.CategorySearchBand(search, (String)session.getAttribute("Category")));
		}
		return "bandlist";
	}

	@RequestMapping("signUp")
	public String signUp(UserDto userDto) {
		// 유저 가입
		dao.signUp(userDto);

		return "redirect:woori";
	}

	@RequestMapping("Login")
	public RedirectView login(String account, String password) {
		boolean rs = dao.findOne(account, password);
		RedirectView rv;
		if (rs) {
			rv = new RedirectView("lobby");
			session.setAttribute("MyId", account);
		} else {
			rv = new RedirectView("woori");
		}
		rv.setExposeModelAttributes(false);
		return rv;
	}

	@RequestMapping("CreateBand")
	public String createBand(int categoryId, String name, String introduction, String location, int capacity) {

		dao.createBand(new BandListDto(categoryId, name, introduction, location, capacity,
				(String) session.getAttribute("MyId")));
		dao.createHost((String) session.getAttribute("MyId"));
		// 방 생성하는 메소드 -> jsp페이지에서 post로 전송된 파라메터를 dto 생성자를 이용해 바로 저장 후 createBand메소드
		// 매개변수로 사용
		return "redirect:list";
	}

	@RequestMapping("service")
	public String service(Model model) {
		return "service";
	}

	@RequestMapping("enterBand")
	public String room(String bandId, Model model) {
		model.addAttribute("MemberList", dao.bandMemberList(Integer.parseInt(bandId)));
		
		return "bandDetail";
	}
	@RequestMapping("bandJoin")
	public RedirectView bandJoin(String bandId) {
		dao.joinBand((String)session.getAttribute("MyId"), Integer.parseInt(bandId));
		RedirectView rv = new RedirectView("enterBand?bandId="+bandId);
		rv.setExposeModelAttributes(false);
		return rv;
	}
	
	@RequestMapping("withdrawalBand")
	public RedirectView withdrawalBand(String bandId) {
		dao.withdrawalBand((String)session.getAttribute("MyId"), Integer.parseInt(bandId));
		RedirectView rv = new RedirectView("enterBand?bandId="+bandId);
		rv.setExposeModelAttributes(false);
		return rv;
	}
	
	@RequestMapping({ "/", "woori" })
	public String mainRoom(Model model) {

		return "woori";
	}

	@RequestMapping("room")
	public String room() {
		
		return "bandDetail";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String join(UserDto userDto) {
		return dao.signUp(userDto) == 0 ? "false": "true";
	}
	
	@RequestMapping(value = "/duplicate-check", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	@ResponseBody
	public String validateDuplicate(String account) {
		return dao.findByAccount(account) == null ? "사용 가능" : "사용 불가";
	}
}
