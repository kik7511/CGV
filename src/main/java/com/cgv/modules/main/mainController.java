package com.cgv.modules.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	@RequestMapping(value = "/")
	public String main() {
		return "infra/main/user/main";
	}
}
