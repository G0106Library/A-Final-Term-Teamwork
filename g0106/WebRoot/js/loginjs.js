function cambiar_login() {
  document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_login";  
document.querySelector('.cont_form_login').style.display = "block";
document.querySelector('.cont_form_sign_up').style.opacity = "0";               

setTimeout(function(){  document.querySelector('.cont_form_login').style.opacity = "1"; },400);  
  
setTimeout(function(){    
document.querySelector('.cont_form_sign_up').style.display = "none";
},200);  
}

function cambiar_sign_up(at) {
  document.querySelector('.cont_forms').className = "cont_forms cont_forms_active_sign_up";
  document.querySelector('.cont_form_sign_up').style.display = "block";
document.querySelector('.cont_form_login').style.opacity = "0";
  
setTimeout(function(){  document.querySelector('.cont_form_sign_up').style.opacity = "1";
},100);  

setTimeout(function(){   document.querySelector('.cont_form_login').style.display = "none";
},400);  
}    

function reader_login_checknull(){
	var readerid=document.getElementById("readerid").value;
	var readerpasswd=document.getElementById("readerpasswd").value;
	if(readerid=="" || readerpasswd==""){
		//location.reload();
		alert("用户名或密码不能为空！");
		//alertMsg("用户名或密码不能为空！",1);
		
	}
	else{
		document.readerLoginForm.submit();
	}
	
}
function admin_login_checknull(){
	var adminid=document.getElementById("adminid").value;
	var adminpasswd=document.getElementById("adminpasswd").value;
	if(adminid=="" || adminpasswd==""){
		//location.reload();
		alert("用户名或密码不能为空！");
		//alertMsg("用户名或密码不能为空！",1);
		
	}
	else{
		document.adminLoginForm.submit();
	}
	
}


function ocultar_login_sign_up() {

document.querySelector('.cont_forms').className = "cont_forms";  
document.querySelector('.cont_form_sign_up').style.opacity = "0";               
document.querySelector('.cont_form_login').style.opacity = "0"; 

setTimeout(function(){
document.querySelector('.cont_form_sign_up').style.display = "none";
document.querySelector('.cont_form_login').style.display = "none";
},500);  
  
  }