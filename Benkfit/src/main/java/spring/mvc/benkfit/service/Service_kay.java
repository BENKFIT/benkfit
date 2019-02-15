package spring.mvc.benkfit.service;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface Service_kay {
	//마이페이지  내정보
	public void mypage_info(HttpServletRequest req, Model model);
	
	//예금계좌 //이체한도 조회
	public void myCheq_list(HttpServletRequest req, Model model);
	
	//대출계좌
	public void myloan_list(HttpServletRequest req, Model model);
	
	//적금계좌
	public void mysav_list(HttpServletRequest req, Model model);
	
	//idpw체크
	public void idpwChk(HttpServletRequest req, Model model);
	
	//내정보 -화면
	public void info(HttpServletRequest req, Model model);
	
	//내정보 수정처리
	public void up_info(HttpServletRequest req, Model model);
		
	//탈퇴
	public void del_mem(HttpServletRequest req, Model model);
	
	//qr코드생성
	public void qrcode(HttpServletRequest req, Model model);
	
	//qr코드생성후 코드변경
	public void qrPro(HttpServletRequest req, Model model);
	
	//이체한도 수정
	public void limit_up(HttpServletRequest req, Model model);
	
	//예금계좌 상세 조회
	public void sel_cheq(HttpServletRequest req, Model model);
	
	//대출계좌 상세조회
	public void sel_loan(HttpServletRequest req, Model model);
	
	//적금계좌 상세조회
	public void sel_sav(HttpServletRequest req, Model model);
	/*
	//예금해지
	public void del_cheq(HttpServletRequest req, Model model);*/
	
	//내서류 목록
	public void docu_list(HttpServletRequest req, Model model);
	
	//서류 등록
	public void addimg(HttpServletRequest  req, Model model) throws Exception;
	
	//서류인식
	public void readDoc(String imgfile, Model model) throws IOException;
		
	
}
