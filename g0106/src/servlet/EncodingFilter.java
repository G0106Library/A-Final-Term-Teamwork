package servlet;

import java.io.IOException;  
import javax.servlet.Filter;  
import javax.servlet.FilterChain;  
import javax.servlet.FilterConfig;  
import javax.servlet.ServletException;  
import javax.servlet.ServletRequest;  
import javax.servlet.ServletResponse;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
public class EncodingFilter implements Filter { //Ҫʵ��Filter�ӿ�  
 //�洢�����ʽ��Ϣ  
 private String encode = null;  
 public void destroy(){  
    
 }  
   
 public void doFilter(ServletRequest req,ServletResponse resp,FilterChain chain)  
   throws IOException,ServletException{  
    
  //ת��  
  HttpServletRequest request = (HttpServletRequest)req;  
  HttpServletResponse response = (HttpServletResponse)resp;  
    
  /* 
   * �ж���web.xml�ļ����Ƿ������˱����ʽ����Ϣ 
   * ���Ϊ�գ������ñ����ʽΪ�����ļ��еı����ʽ 
   * ��������ʽ����ΪGBK 
   */  
  if(this.encode != null && !this.encode.equals("")){  
   request.setCharacterEncoding(this.encode);  
   response.setCharacterEncoding(this.encode);  
  }else{  
   request.setCharacterEncoding("utf-8");  
   response.setCharacterEncoding("utf-8");  
  }  
    
  /* 
   * ʹ��doFilter�����������е���һ����������Ŀ����Դ��servlet��JSPҳ�棩�� 
   * chain.doFilter��������������ಿ�֣�����еĻ��������մ��������servlet��JSPҳ�档 
   */  
  chain.doFilter(request,response);  
 }  
   
 public void init(FilterConfig config) throws ServletException{  
  //��ȡ��web.xml�ļ��������˵ı����ʽ����Ϣ  
  this.encode = config.getInitParameter("encode");  
 }  
   
   
}  