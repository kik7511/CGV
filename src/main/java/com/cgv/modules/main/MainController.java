package com.cgv.modules.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/")
public class MainController {

	@RequestMapping(value = "main")
	public String main() {
		return "infra/main/user/main";
	}
}
