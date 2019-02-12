package spring.mvc.benkfit.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.web3j.protocol.http.HttpService;

import spring.mvc.benkfit.service.Service_bh;

@Controller
public class Controller_bh {
	
	private static final Logger logger = LoggerFactory.getLogger(Controller_bh.class);
	
	@Autowired
	Service_bh service;
	
	/*
	 *  계정생성하기
	 */
	@RequestMapping("create")
	public String create(HttpServletRequest req, Model model) throws Exception{
		logger.info("create");
		return "engine/create";
	}
	@RequestMapping("createAccount")
	public String createAccount(HttpServletRequest req, Model model) throws Exception{
		logger.info("CreateAccount");
		service.createAccount(req, model);
		return "engine/createAccount";
	}
	
	/*
	 * 계정 잔액 확인하기
	 */
	@RequestMapping("Balance")
	public String Balance(HttpServletRequest req, Model model) throws Exception{
		logger.info("Balance");
		service.Balance(req, model);
		return "common/event/slotBalance";
	}
	
	/*
	 * 슬롯머신 시작
	 */
	@RequestMapping("slot")
	public String slot(HttpServletRequest req, Model model) throws Exception{
		logger.info("slot");
		return "common/event/slot";
	}
	
	@RequestMapping("slotResult")
	public String slotResult(HttpServletRequest req, Model model) throws Exception{
		logger.info("slotResult");
		service.slot(req, model);
		return "common/event/slotResult";
	}
	/*
	 * 슬롯머신 종료
	 */
	
	/*
	 * 대출 시작
	 */
	//대출 신청
	@RequestMapping("loan")
	public String loan(HttpServletRequest req, Model model) throws Exception{
		logger.info("loan");
		return "engine/loan";
	}
	
	/*
	 * 송금시작
	 */
	//송금하기
	@RequestMapping("transfer")
	public String transfer(HttpServletRequest req, Model model) throws Exception{
		logger.info("transfer");
		return "common/transfer/transfer";
	}
	
	//송금완료
	@RequestMapping("transferPro")
	public String transferPro(HttpServletRequest req, Model model) throws Exception{
		logger.info("transferPro");
		service.transferPro(req, model);
		return "common/transfer/transferPro";
	}
	
	
	
	
	
	

}
