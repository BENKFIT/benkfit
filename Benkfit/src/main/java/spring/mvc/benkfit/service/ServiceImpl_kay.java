package spring.mvc.benkfit.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import org.springframework.web.multipart.*;

import spring.mvc.benkfit.persistence.DAOImpl_kay;
import spring.mvc.benkfit.vo.*;
import spring.mvc.benkfit.vo.MyloanAccount_kay;
import spring.mvc.benkfit.vo.UsersVO;
import spring.mvc.benkfit.vo.document_kay;
import spring.mvc.benkfit.vo.myCheqAccount_kay;

@Service
public class ServiceImpl_kay implements Service_kay{
	
	@Autowired
	DAOImpl_kay dao;
	
	//계좌관리 목록
	@Override
	public void myCheq_list(HttpServletRequest req, Model model) {
		/*	String strid = req.getParameter("c_id");*/
		List<myCheqAccount_kay> cheq = dao.myCheq_list();
		List<MyloanAccount_kay> loan = dao.myloan_list();
		
		/*model.addAttribute("strid", strid);*/
		model.addAttribute("cheq", cheq);
		model.addAttribute("loan", loan);
	}
	//내서류관리
	public void docu_list(HttpServletRequest req, Model model) {
		List<document_kay> docu = dao.docu_list();
		model.addAttribute("docu", docu);
	}
	
	//qr코드 생성
	@Override
	public void qrcode(HttpServletRequest req, Model model) {
		UsersVO qrcode = dao.qrcode();
		model.addAttribute("qrcode", qrcode);
	}

	//이체한도 조회
	@Override
	public void limit_sel(HttpServletRequest req, Model model) {
		myCheqAccount_kay limit = dao.limit_sel();
		System.out.println("limit1 : " + limit);
		model.addAttribute("limit", limit);
	}
	//이체한도 수정
	@Override
	public void limit_up(HttpServletRequest req, Model model) {
		int acount_lim = Integer.parseInt(req.getParameter("lim"));
		int limit = dao.limit_up(acount_lim);
		model.addAttribute("acount_lim", acount_lim);
		model.addAttribute("limit", limit);
	}
	
	//내정보
	@Override
	public void info(HttpServletRequest req, Model model) {
		UsersVO user = dao.info();
		model.addAttribute("user",user);
	}
	
	/*서류등록*/
	@SuppressWarnings("deprecation")
	@Override
	public void docu_upload(HttpServletRequest req, Model model) throws Exception {
	
		MultipartFile file = ((MultipartRequest)req).getFile("doc_img");
        
		String saveDir = req.getRealPath("C:\\Users\\82109\\Desktop\\image"); //저장 경로(C:\Dev\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\SPRING_BMS_Project\resources\images\)
        String realDir="C:\\DEV43\\benkfit\\Benkfit\\src\\main\\webapp\\resources\\img\\doc\\"; // 저장 경로
        
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
            
            String doc_name= req.getParameter("doc_name");
            String doc_content= req.getParameter("doc_content");
            String doc_num = req.getParameter("doc_num");
            String doc_img = file.getOriginalFilename();

            document_kay doc = new document_kay();
            
            doc.setDoc_img(doc_img);
            doc.setDoc_name(doc_name);
            doc.setDoc_num(doc_num);
            doc.setDoc_content(doc_content);
            
           int result = dao.docu_upload(doc);
           
           model.addAttribute("result", result);
           
	    } catch(IOException e) {
	        e.printStackTrace();
	    }
		UsersVO user = dao.info();
		model.addAttribute("user", user);
		
	}
}