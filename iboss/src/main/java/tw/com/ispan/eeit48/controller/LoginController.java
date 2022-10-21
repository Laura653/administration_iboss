package tw.com.ispan.eeit48.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import tw.com.ispan.eeit48.domain.EmpBean;
import tw.com.ispan.eeit48.domain.ReCaptchaResponse;
import tw.com.ispan.eeit48.service.EmpService;

@Controller
public class LoginController {

    @Autowired
    private EmpService empService;
    @Autowired
    private RestTemplate restTemplate;

    @RequestMapping(path = "/login.controller")
    public String handlerMethod(
            Model model, Integer empID, String passwd, HttpSession session
//            @RequestParam(name = "g-recaptcha-response") String captchaResponse
            ) {
//        String url = " https://www.google.com/recaptcha/api/siteverify";
//        String params = "?secret=6LcQ42giAAAAAJ_Jg_zVtcdfUx_dr0iLYyFh8Rco&response=" + captchaResponse;
//
//        ReCaptchaResponse reCaptchaResponse = restTemplate
//                .exchange(url + params, HttpMethod.POST, null, ReCaptchaResponse.class).getBody();

//        if (reCaptchaResponse.isSuccess()) {
//            
//        } else {
//           
//        }
       

//         接收資料
//         驗證資料
		if (empID == null || empID.SIZE == 0) {
			System.out.println("EMPID NO");
			return "/";
		}
//         呼叫model
		EmpBean bean = empService.login(empID, passwd);
		
		//根據model執行結果，導向view
		if (bean == null) {
			return "redirect:/index.html";
		} else {
			session.setAttribute("user", bean);
			return "redirect:/home/home.html";
			
		}
    }
}
