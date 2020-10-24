package com.Woori.myapp;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.Woori.Dto.BandListDto;
import com.Woori.Dto.BoardDto;
import com.Woori.Dto.UserDto;
import com.Woori.Dto.UserInfoDto;

@Repository
public class WooriDao {
	private final JdbcTemplate jdbcTmp;

	@Autowired
	public WooriDao(JdbcTemplate jdbcTemplate) {
		this.jdbcTmp = jdbcTemplate;
	}

	@Value("#{sql['woori.signUp']}")
	private String signUp;

	@Value("#{sql['woori.findByAccount']}")
	private String findByAccount;

	@Value("#{sql['woori.findOne']}")
	private String findOne;

	@Value("#{sql['woori.getBandList']}") // 밴드리스트 가져오는 sql문(밴드/카테고리 2중조인)
	private String getBandlist;

	@Value("#{sql['woori.bandCount']}") // 안씀(밴드 갯수 세는 sql문)
	private String bandCount;

	@Value("#{sql['woori.memberCount']}") // 밴드에 접속한 인원수 체크하는 sql문
	private String memberCount;

	@Value("#{sql['woori.searchBand']}") // 키워드(밴드이름) 검색(밴드리스트 sql에 where절 추가)
	private String searchBand;
	// 추가
	@Value("#{sql['woori.myGroupList']}")
	private String myGroupList;
	// 추가
	@Value("#{sql['woori.categoryBandList']}")
	private String categoryBandList;
	// 추가
	@Value("#{sql['woori.categorySearchBand']}") //
	private String categorySearchBand;

	@Value("#{sql['woori.createBand']}") // 밴드 생성 sql문
	private String createBand;

	@Value("#{sql['woori.createHost']}") // 밴드 생성시 룸마스터 권한부여 sql문
	private String createHost;

	@Value("#{sql['woori.myInfo']}") // 마이인포 가져오는 sql문(user/interest 테이블 2중조인)
	private String myInfo;

	@Value("#{sql['woori.myGroup']}") // 마이 인포 안에 Group정보 가져오는 sql문(user.member.band 3중조인)
	private String myGroup;

	@Value("#{sql['woori.noticeList']}") //
	private String noticeList;
	
	@Value("#{sql['woori.bandJoin']}") //
	private String bandJoin;
	
	@Value("#{sql['woori.bandOut']}") //
	private String bandOut;
	
	@Value("#{sql['woori.bandMemberList']}") //
	private String bandMemberList;
	
	public List<BandListDto> getList() {
		return jdbcTmp.query(getBandlist, new DtoMapper());
//		맵퍼를 이용해서 dto생성후 리스트로 반환-> 컨트롤러에서 모델에 저장후 jsp로 전송
	}

	public int memberCount(int bandId) {
		return jdbcTmp.queryForInt(memberCount, bandId);
		// 메소드 결과물을 숫자로 반환해서 리턴(맴버 접속한인원수) -> 맵퍼 5번으로 들어감
	}

	public List<BandListDto> myGroupList(String myId) {
		return jdbcTmp.query(myGroupList, new DtoMapper(), myId);
//		맵퍼를 이용해서 dto생성후 리스트로 반환-> 컨트롤러에서 모델에 저장후 jsp로 전송
	}

	public List<BandListDto> CategoryBandList(String category) {
		return jdbcTmp.query(categoryBandList, new DtoMapper(), category);
//		맵퍼를 이용해서 dto생성후 리스트로 반환-> 컨트롤러에서 모델에 저장후 jsp로 전송
	}

	// 수정 sql문변경
	public List<BandListDto> searchBand(String search) {
		String keyword = "%" + search + "%";
		return jdbcTmp.query(searchBand, new DtoMapper(), keyword);
	}

	// 추가
	public List<BandListDto> CategorySearchBand(String search, String category) {
		System.out.println(search);
		System.out.println(category);
		String keyword = "%" + search + "%";
		return jdbcTmp.query(categorySearchBand, new DtoMapper(), keyword, category);
	}

	class DtoMapper implements RowMapper<BandListDto> {

		@Override
		public BandListDto mapRow(ResultSet rs, int rowNum) throws SQLException {
			// 일종의 for문/while문과 비슷한 원리임
			// 검색한 결과물이 있을때까지 rowNum++
			BandListDto bandListDto = new BandListDto( // db에서 가져온 값을 생성자에 맞춰 dto에 저장(dto의 생성자 매개변수와 dao의 매개변수의 갯수와 타입이
														// 같아야함)
					rs.getInt("id"), // 밴드 번호
					rs.getString("name"), // 밴드 이름
					rs.getString("introduction"), // 밴드소개
					rs.getString("location"), // 밴드 지역
					rs.getInt("capacity"), // 밴드 최대인원
					memberCount(rs.getInt("id")), // 밴드번호와 일치하는 밴드의 접속자 숫자
					rs.getString("categoryName")); // 밴드의 카테고리 sql문의 (category.name)
			return bandListDto; // dto반환
		}
	}

	public int createBand(BandListDto bandListDto) {
		return jdbcTmp.update(createBand, bandListDto.getCategoryId(), bandListDto.getName(),
				bandListDto.getIntroduction(), bandListDto.getIntroduction(), bandListDto.getCapacity(),
				bandListDto.getCreateBy());
		// 가져온 dto에 꺼내 createBand sql문 ?로 사용
		// jdbcTmp.update(createBand, ?, ?, ?, ?, ?, ?)
	}
	
	public int createHost(String id) {

		return jdbcTmp.update(createHost, id);
	}

	public List<UserInfoDto> myInfo(String id) {
		return jdbcTmp.query(myInfo, new myInfoMapper(), id);
		// 맵퍼를 이용해서 dto생성후 myinfo 리스트로 반환-> 컨트롤러에서 모델에 저장후 jsp로 전송
	}

	public String myGroup(String id) {
		return jdbcTmp.queryForObject(myGroup, String.class, id);
		// myinfo에 있는 Group칸의 데이터를 스트링으로 반환 -> myInfoMapper 4번으로 들어감
	}

	class myInfoMapper implements RowMapper<UserInfoDto> {
		@Override
		public UserInfoDto mapRow(ResultSet rs, int rowNum) throws SQLException {
			UserInfoDto userInfoDto = new UserInfoDto(rs.getString("account"), rs.getString("email"),
					rs.getString("interest"), myGroup(rs.getString("account")), rs.getString("location"));
			return userInfoDto; // dto반혼
		}
	}

	public List<BoardDto> noticeList() {
		return jdbcTmp.query(noticeList, new BoardMapper());
	}

	class BoardMapper implements RowMapper<BoardDto> {
		@Override
		public BoardDto mapRow(ResultSet rs, int rowNum) throws SQLException {
			BoardDto boardDto = new BoardDto(rowNum + 1, rs.getString("account"), rs.getString("title"),
					rs.getString("content"), rs.getString("created_at"));
			return boardDto; // dto반혼
		}
	}
//------------------------ 벤드페이지-----------------------------------------
	public List<UserDto> bandMemberList(int bandId){
		return jdbcTmp.query(bandMemberList, new MemberMapper(), bandId);
	}
	
	public int joinBand(String id, int bandId) {
		return jdbcTmp.update(bandJoin, id, bandId);
	}
	public int withdrawalBand(String id, int bandId) {
		return jdbcTmp.update(bandOut, id, bandId);
	}
	
	class MemberMapper implements RowMapper<UserDto> {
		@Override
		public UserDto mapRow(ResultSet rs, int rowNom) throws SQLException{
			UserDto userDto = new UserDto(rs.getString("account"), rs.getString("role"));
			return userDto;
		}
	}
//	---------------------- 로그인 -------------------------------------------
	public Integer signUp(UserDto userDto) {
		return jdbcTmp.update(signUp, userDto.getAccount(), userDto.getPassword(), userDto.getName(),
				userDto.getEmail(), userDto.getPhone(), userDto.getAddress(), userDto.getAccount());
	}

	public UserDto findByAccount(String account) {
		try {
			return jdbcTmp.queryForObject(findByAccount, new UserRowMapper(), account);
		} catch (Exception e) {
			return null;
		}
	}

	public boolean findOne(String account, String password) {
		return jdbcTmp.queryForObject(findOne, new UserRowMapper(), account, password) != null;
	}

	public class UserRowMapper implements RowMapper<UserDto> {
		@Override
		public UserDto mapRow(ResultSet rs, int rowNum) throws SQLException {
			UserDto userDto = new UserDto(rs.getInt("id"), rs.getString("role"), rs.getString("account"),
					rs.getString("password"), rs.getString("name"), rs.getString("email"), rs.getString("phone_number"),
					rs.getString("location"), rs.getTimestamp("created_at"), rs.getString("created_by"),
					rs.getTimestamp("updated_at"), rs.getString("updated_by"));

			return userDto;
		}
	}
}
