package com.rms.user;

import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.rm.until.VerifiCode;

/**
 * Servlet implementation class VerificodeServlet
 */
@WebServlet("/VerificodeServlet")
public class VerificodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerificodeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*
        1.生成验证码
        2.把验证码上的文本存在session中
        3.把验证码图片发送给客户端
        */
		
		System.out.println("jinnlaile~~~~~~~~~~~~~~~~~~~~~~~~~~~");
       VerifiCode v=new VerifiCode();     //用我们的验证码类，生成验证码类对象
       BufferedImage image=v.getImage();  //获取验证码
       request.getSession().setAttribute("text", v.getText()); //将验证码的文本存在session中
       v.output(image, response.getOutputStream());//将验证码图片响应给客户端
   }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
