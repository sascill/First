 function checkz() {
      var checkEmail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
      var checkId= RegExp(/^[a-zA-Z0-9]{4,12}$/);
      var checkName= RegExp(/^[a-zA-Z0-9가-힣]{2,8}$/);
      var checkPw = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
     
      //이름의 유효성 검사
      if($("#id").val() != null){
	      if(!checkId.test($("#id").val())){
	        alert("아이디는 영문+숫자로 이루어져야 하며 4글자이상 12글자 이하로 입력해주세요.");
	        $("#id").val("");
	        $("#id").focus();
	        return false;
	      }
      }
      
      //비밀번호
      if($("#pw").val() != null){
    	  if(!checkPw.test($("#pw").val())) {
		      alert("비밀번호는 영문,숫자를 혼합하여 6~20자로 입력해 주세요.");
		      $("#pw").val("");
		      $("#pw").focus();
		      return false;
    	  }
      }
 
      //비밀번호 똑같은지
      if($("#cpw").val() != null){
	      if($("#pw").val() != $("#cpw").val()){ 
		      alert("비밀번호가 같지 않습니다.");
		      $("#cpw").val("");
		      $("#cpw").focus();
		      return false;
	     }
      }
 
      //이메일 유효성 검사
      if($("#email").val() != null){
	      if(!checkEmail.test($("#email").val())){
		        alert("이메일형식에 맞게 입력해주세요")
		        $("#email").val("");
		        $("#email").focus();
	        return false;
	      }
      }
 
      //별명 유효성
      if($("#nickName").val() != null){
    	  if (!checkName.test($("#nickName").val())) {
	        alert("별명은 2~8자리 이어야 합니다.");
	        $("#name").val("");
	        $("#name").focus();
	        return false;
    	  }
      }
      
      //비밀번호 변경시 똑같은지 체크
      if($("#cnpw").val() != null){
    	  if($("#npw").val() != $("#cnpw").val()){ 
	          alert("비밀번호가 같지 않습니다.");
	          $("#cnpw").val("");
	          $("#cnpw").focus();
	          return false;
    	  }
      }
  }
