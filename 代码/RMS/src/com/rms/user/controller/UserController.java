package com.rms.user.controller;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rm.until.CipherUtil;
import com.rms.classsystem.service.ClassSystemService;
import com.rms.entity.ClassSystem;
import com.rms.entity.Users;
import com.rms.user.service.UserService;

@Controller
public class UserController {
	@Resource
	private UserService userService;
	private Boolean issigned = false;
	@Resource
	private ClassSystemService css;
	private CipherUtil cu;

	// 登录控制器
	@RequestMapping(value = "/loginController", method = RequestMethod.POST)
	public String getLoginPerson(Users users, HttpSession session, HttpServletRequest request) throws UnsupportedEncodingException {
		
		request.setCharacterEncoding("utf-8");
        String session_vcode=(String) request.getSession().getAttribute("text");    //从session中获取真正的验证码
        String form_vcode=request.getParameter("vcode"); //获取用户输入的验证码
        boolean trueVcode=(session_vcode.equalsIgnoreCase(form_vcode));
        if(!(session_vcode.equalsIgnoreCase(form_vcode))) //进行判断
        {
            request.setAttribute("msg", "验证码错误");   //如果错误就将错误信息发送给客户端
            
        }
	
		boolean iput = (users.getEmail().equals("用户名")) || (users.getEmail().contains(" "))||(users.getPassword().equals("Password"))
				|| (users.getPassword().contains(" "));
		if (iput||(!trueVcode)) {
			System.out.println("验证码错误啦啦啦啦啦");
			return "mylogin";
		} else {
			users.setPassword(this.cu.generatePassword(users.getPassword()));
			if (this.userService.getLoginPerson(users) == true) {
				issigned = true;
				Users user = this.userService.UserCenter(users.getEmail());
				System.out.println("usercontroller里面的id：" + user.getId());

				List<ClassSystem> system = css.getSystem(user);
				user.setClasssystem(system);
				session.setAttribute("isSigned", issigned);// 定义一个是否已登录的接口
				session.setAttribute("user", user);
				return "index";
			} else {
				issigned = false;
				request.getSession().setAttribute("isSigned", issigned);// 定义一个是否登录的接口
				request.setAttribute("errormessage", "该邮箱未注册或密码错误，请重新输入");
				return "mylogin";
			}

		}

	}

	//注册
	@RequestMapping(value = "/RegisterController", method = RequestMethod.POST)
	public String regist(Users user, HttpSession session, HttpServletRequest request) throws SQLException, UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
        String session_vcode=(String) request.getSession().getAttribute("text");    //从session中获取真正的验证码
        String form_vcode=request.getParameter("vcode"); //获取用户输入的验证码
        boolean trueVcode=(session_vcode.equalsIgnoreCase(form_vcode));
        if(!(session_vcode.equalsIgnoreCase(form_vcode))) //进行判断
        {
        	 request.setAttribute("msg11", "验证码错误");   //如果错误就将错误信息发送给客户端
        	 System.out.println("注册的时候验证码错误");
            
        }
		
		
		
		//判断邮箱是否符合格式
		String reg ="^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)*\\.[a-zA-Z0-9]{2,6}$" ;	
		boolean emailStyle=user.getEmail().matches(reg);
		
		System.out.println(emailStyle);
		System.out.println(user.getName().equals(null));
		System.out.println(user.getName().contains(" "));
		
		
		//是否没有写入以及输入中是否存在空格
		boolean iput = (user.getName().equals("用户名")) || (user.getName().contains(" "))
				|| (user.getPassword().equals("Password")) || (user.getPassword().contains(" "))
				|| (user.getEmail().equals("邮箱")) || (user.getEmail().contains(" ")) || (user.getSchool().equals("学校"))
				|| (user.getSchool().contains(" "));
		
		
		Users uregister = this.userService.UserCenter(user.getEmail());
		//该用户邮箱是否已经注册过
		boolean isRegister = (uregister == null);
		System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
		System.out.println(uregister);
		System.out.println(!isRegister);
		if (iput || (!isRegister) ||(!emailStyle)||(!trueVcode)) {

			return "register";
		} else {
			System.out.println("执行到这里了");
            user.setPassword(this.cu.generatePassword(user.getPassword()));
            System.out.println("加密后的密码为————————————————————————");
            System.out.println(user.getPassword());
			boolean b = this.userService.regist(user);
			if (b) {
				session.setAttribute("user", user);

				System.out.println("true");
				return "index";
			} else {
				return "register";

			}

		}

		
		
		
		
		
	}
	
	
	@RequestMapping(value = "/changeController", method = RequestMethod.POST)
	//修改密码
	public void changeEmailPassword(Users user, HttpSession session, HttpServletRequest request) throws SQLException {
		System.out.println("到修改的controller里面来了");
		Users userbefore=(Users) session.getAttribute("user");
		System.out.println(userbefore.getEmail());
		
		System.out.println("输入框中输入的用户的名字"+user.getName());
		this.userService.xiugaiUser(userbefore, user);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
