package spring.mvc.benkfit.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.mvc.benkfit.persistence.DAO_lia;
import spring.mvc.benkfit.vo.AdminVO;
import spring.mvc.benkfit.vo.CardProductVO;
import spring.mvc.benkfit.vo.CheqProductVO;
import spring.mvc.benkfit.vo.LoanProductVO;
import spring.mvc.benkfit.vo.SavProductVO;
import spring.mvc.benkfit.vo.UsersVO;

@Service
public class ServiceImpl_lia implements Service_lia {

	@Autowired 
	DAO_lia dao;
	
	@Autowired
	private JavaMailSender mailSender;
	
	// 파일 업로드 & 텍스트 인식
	@Override
	public void getText(String file, Model model) throws IOException {
		
		ProcessBuilder pb = new ProcessBuilder("python", "C:/DEV43/python/source/test.py", file);
		Process p = pb.start();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
		
		String line = "";
		
		StringBuilder sb = new StringBuilder();
		
		//System.out.println("start");
		
		while((line = br.readLine()) != null) {
			sb.append(line + "\n");
		}
		
		String info = sb.toString();
		
		//System.out.println(info);
		
		//System.out.println("end");
		
		br.close();
		
		String name = "";
        String jumin = "";
        ArrayList<String> names = new ArrayList<String>();
        
		try{
            //파일 객체 생성
            File txt = new File("C:\\DEV43\\python\\output\\getText.txt");
            
           //스캐너로 파일 읽기
            ArrayList<String> list = new ArrayList<String>();
            Scanner scan = new Scanner(txt);
           
            while(scan.hasNextLine()){
            	list.add(scan.nextLine());
                //System.out.println(scan.nextLine());
            }
            
            /*for(String str : list) {
            	System.out.println(str + "..");
            }*/
            
            //이름 추출
            for(String str : list) {
            	if(str.contains("(")) {
            		if(str.length() <= 8) {
            			//String[] name = str.split("(");  // 괄호를 구분자로 인식못함..
            			//System.out.println(name[0]);
            			names.add(str.substring(0, 3));
            		}
            	}
            }
            name = names.get(0);
            System.out.println("name : " + name);
            
            //주민번호 추출
            for(String str : list) {
            	if(str.contains("-")) {
            		//if(str.length()==14) {
            			jumin = str;
            			System.out.println("jumin : " + jumin);
            		//}
            	}
            }
            
            scan.close();
        } catch (Exception e) {
            e.printStackTrace();
        } 

		model.addAttribute("name", name);
		model.addAttribute("jumin", jumin);
	}
	
	// id중복확인
	@Override
	public void id_check(HttpServletRequest req, Model model) {
		//입력값 받아오기
		String strId = req.getParameter("id");
		//중복확인
		int selectCnt = dao.id_check(strId);
		//결과 저장
		model.addAttribute("selectCnt", selectCnt);
		System.out.println("selectCnt: " + selectCnt);
		model.addAttribute("id", strId);
	}

	// 실명확인
	@Override
	public void nameCheck(HttpServletRequest req, Model model) {
		// 입력값 받아오기
		String name = req.getParameter("name");
		String jumin = req.getParameter("jumin");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("jumin", jumin);

		// 실명확인
		int selectCnt = dao.name_check(map);
		//System.out.println("실명확인cnt : " + selectCnt);
		
		// 결과 저장
		model.addAttribute("selectCnt", selectCnt);
	}
	
	// 비밀번호, 주민번호 뒷자리 암호화
	@Override
	public String encryptSHA256(String str) {
		String pwd = "";
		
		try {
	    	MessageDigest md = MessageDigest.getInstance("SHA-256"); 
	    	md.update(str.getBytes()); 
	        byte byteData[] = md.digest();
	        StringBuffer buffer = new StringBuffer(); 
	        for(int i=0; i<byteData.length; i++){
	        	buffer.append(Integer.toString((byteData[i]&0xff) + 0x100, 16).substring(1));
	        }
	
	        pwd = buffer.toString();
	        
	      } catch(NoSuchAlgorithmException e){
	        e.printStackTrace(); 
	        pwd = null; 
	      }
	     return pwd;
	}

	// 회원가입 처리
	@Override
	public void signInPro(MultipartHttpServletRequest req, Model model) {
		// 이미지 파일
		MultipartFile file = req.getFile("idCard");
		
		String saveDir = req.getRealPath("/resources/img/idcard/"); 
        String realDir = "C:\\DEV43\\workspace_spring\\benkfit\\Benkfit\\src\\main\\webapp\\resources\\img\\idcard\\"; 
        
        try {
            file.transferTo(new File(saveDir+file.getOriginalFilename()));
           
            FileInputStream fis = new FileInputStream(saveDir + file.getOriginalFilename());
            FileOutputStream fos = new FileOutputStream(realDir + file.getOriginalFilename());
            
            int data = 0;
            
            while((data = fis.read()) != -1) {
                fos.write(data);
            }
            fis.close();
            fos.close();
		
			// 바구니 생성, 입력받은 값 받아오기
			UsersVO vo =  new UsersVO();
			
			vo.setC_id(req.getParameter("id"));
			//vo.setC_pwd(encryptSHA256(req.getParameter("pwd")));
			vo.setC_pwd(req.getParameter("pwd"));
			vo.setC_name(req.getParameter("name"));
			vo.setC_jumin1(req.getParameter("jumin1"));
			vo.setC_jumin2(encryptSHA256(req.getParameter("jumin2")));
			//vo.setC_jumin2(req.getParameter("jumin2"));
			vo.setC_hp(req.getParameter("hp"));
			vo.setC_email(req.getParameter("email"));
			vo.setC_post(req.getParameter("post"));
			String addr1 = req.getParameter("addr1");
			String addr2 = req.getParameter("addr2");
			vo.setC_address(addr1 + " " + addr2);
			vo.setC_idCard(file.getOriginalFilename());
			
			// 회원가입 처리
			int insertCnt = dao.insertMember(vo);
			
			model.addAttribute("insertCnt", insertCnt);
        } catch(IOException e) {
        	e.printStackTrace();
        }
	}

	// 로그인, 비밀번호 확인
	@Override
	public void loginPro(HttpServletRequest req, Model model) {
		String id = req.getParameter("username");
		String pwd = req.getParameter("password");
		
		// 로그인 처리
		int selectCnt = 0;
		UsersVO vo = new UsersVO();
		AdminVO avo = new AdminVO();
		
		vo = dao.user_login(id, pwd);
		avo = dao.admin_login(id, pwd);
		
		// 아이디 없을 때
		if(vo == null && avo == null) {
			selectCnt = 3;
		// 고객 로그인
		} else if(vo != null && avo == null) {
			// 비밀번호 일치
			if(encryptSHA256(pwd).equals(vo.getC_pwd())) {
				selectCnt = 1;
				req.getSession().setAttribute("userId", id);
			// 비밀번호 불일치
			} else {
				selectCnt = -1;
			}
		// 관리자 로그인
		} else if(vo == null && avo != null) {
			// 비밀번호 일치
			if(pwd.equals(avo.getAdmin_pwd())) {
				selectCnt = 2;
				req.getSession().setAttribute("adminId", id);
			// 비밀번호 불일치
			} else {
				selectCnt = -2;
			}
		}
		
		model.addAttribute("selectCnt", selectCnt);
	}

	// 아이디 찾기
	@Override
	public void findMyId(HttpServletRequest req, Model model) {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
 
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", name);
		map.put("email", email);
		
		String id = dao.findMyId(map);
		
		if(id == null) {
			model.addAttribute("id", "0");
		} else {
			model.addAttribute("id", id);
		}
	}

	// 임시 비밀번호 이메일 보내기
	@Override
	public void pwdEmail(HttpServletRequest req, Model model) {
		String id = req.getParameter("id");
		String email = req.getParameter("email");
		
		System.out.println(id + " / " + email);
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("email", email);
		
		int selectCnt = dao.findMyPwd(map);
		System.out.println("조회 : " + selectCnt);
		// 일치정보 있으면
		if(selectCnt == 1) {
			// 임시 비밀번호 생성
			String pwd = "";
			for (int i = 0; i < 12; i++) {
				pwd += (char) ((Math.random() * 26) + 97);
			}
			map.put("pwd", pwd);
			
			// 비밀번호 DB 업데이트
			int updateCnt = dao.setTempPwd(map);
			System.out.println("비번업데이트 : " + updateCnt);
			if(updateCnt == 1) {
				// 메일 발송
				sendEmail(map);
			} 
		}
	}

	// 임시 비밀번호 이메일 보내기
	@Override
	public void sendEmail(Map<String, String> map) {
		try{
            MimeMessage message = mailSender.createMimeMessage();

          String txt = map.get("id") + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요." 
          				+ "<br/>임시 비밀번호 : " + map.get("pwd")
          				+ "<br><a href='http://localhost/benkfit/login'>로그인하러 가기</a>";

          message.setSubject("benkfit 임시 비밀번호가 발급되었습니다.");
          message.setText(txt, "UTF-8", "html");
          message.setFrom(new InternetAddress("admin@benkfit.com"));
          message.addRecipient(RecipientType.TO, new InternetAddress(map.get("email")));
          mailSender.send(message);

      }catch(Exception e){
          e.printStackTrace();
      }   
	}
	// 검색
	@Override
	public void search_pro(HttpServletRequest req, Model model) {
		String keyword = req.getParameter("search");
		System.out.println("keyword : " + keyword);
		
		int cardCnt = dao.search_card_count(keyword);
		int cheqCnt = dao.search_cheq_count(keyword);
		int loanCnt = dao.search_loan_count(keyword);
		int savCnt = dao.search_sav_count(keyword);
		
		if(cardCnt > 0) {
			List<CardProductVO> card = dao.search_card(keyword);
			model.addAttribute("card", card);
		}
		
		if(cheqCnt > 0) {
			List<CheqProductVO> cheq = dao.search_cheq(keyword);
			model.addAttribute("cheq", cheq);
		}
		
		if(loanCnt > 0) {
			List<LoanProductVO> loan = dao.search_loan(keyword);
			model.addAttribute("loan", loan);
		}
		
		if(savCnt > 0) {
			List<SavProductVO> sav = dao.search_sav(keyword);
			model.addAttribute("sav", sav);
		}
		
		/*for(int i=0; i<cheq.size(); i++) {
			System.out.println(cheq.get(i) + " / ");
		}
		
		for(int i=0; i<loan.size(); i++) {
			System.out.println(loan.get(i) + " / ");
		}
		
		for(int i=0; i<sav.size(); i++) {
			System.out.println(sav.get(i) + " / ");
		}*/
		model.addAttribute("cardCnt", cardCnt);
		model.addAttribute("cheqCnt", cheqCnt);
		model.addAttribute("loanCnt", loanCnt);
		model.addAttribute("savCnt", savCnt);
	}
}
