package com.project.main.test.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParser;
import com.project.main.test.service.TestService;
@Controller
@RequestMapping(value = "/test")
public class TestController {
	Logger logger = Logger.getLogger(TestController.class);

	@Autowired
	private TestService testervice;

	@RequestMapping(value = "/check.do", method = RequestMethod.GET)
	public String check(){ 
		logger.info("check.do GET 호출 성공");
		return "template/checkIn/selectInfo";
	}
	@ResponseBody
	@RequestMapping(value = "/apitest.do", method = RequestMethod.GET)
	public String requestResult(@RequestParam("test") String test) {
		logger.info("api요청,test:" + test);
		StringBuffer output = new StringBuffer();
		try {
			String site = test;

			URL url = new URL(site);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			// 여기서 실제로 웹서버로 데이터가 전송된다.
			conn.setRequestMethod("GET");
			/* conn.setRequestProperty("keyword_str", "자바"); */

			int resCode = conn.getResponseCode();
			System.out.println(resCode);

			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String inputLine;

			while ((inputLine = in.readLine()) != null) {
				output.append(inputLine);
				output.append("\n");
			}
			in.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		


		return output.toString();
	}

}
