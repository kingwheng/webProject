<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <spring:url var="httpRequest_js" value="/resources/files_js/httpRequest.js"></spring:url>
  <script src="${ httpRequest_js }"></script>
  
  <style type="text/css">
  
  	select {
  width: 80px; /* 원하는 너비설정 */
  padding: .2em .1em; /* 여백으로 높이 설정 */
  font-family: inherit;  /* 폰트 상속 */
  background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */  
  border: 1px solid #999; 
  border-radius: 0px; /* iOS 둥근모서리 제거 */
  -webkit-appearance: none; /* 네이티브 외형 감추기 */
  -moz-appearance: none;
  appearance: none;
}
  
  </style>
  
 
  
</head>
<body>

	
	<div style="width: 100%; height: 100%;">
		<div align="center" style="padding-top: 10%;">
			<div style="border: 1px solid silver; width: 360px; margin-bottom: 70px;">
				<form name="form" method="post">
					<table style="width:300px; margin-top: 30px; margin-bottom: 30px;">
						<tr>
							<td style="padding-top: 10px;">
								아이디 : 
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" class="form-control input-sm" name="id" id="id"
								placeholder="아이디를 입력하세요." onblur="javascript:myID()">
							</td>
						</tr>
						<tr>
							<td>
								<div id="iddiv">
									<font size="2">영문/숫자를 이용하시기 바랍니다.(한글은 사용 불가능합니다.)</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="padding-top: 10px;">
								비밀번호 : 
							</td>
						</tr>
						<tr>
							<td>
								<input type="password" class="form-control input-sm" name="pw" id="pw"
								placeholder="비밀번호를 입력하세요" onblur="javascript:myPW()">
							</td>
						</tr>
						<tr>
							<td>
								<div id="pwdiv">
									<font size="2">6~16자, 영문/숫자/특수문자를 모두 사용하세요</font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="padding-top: 10px;">
								비밀번호 확인 : 
							</td>
						</tr>
						<tr>
							<td>
								<input type="password" class="form-control input-sm" name="pwc" id="pwc"
								placeholder="비밀번호를 입력하세요" onblur="javascript:myPWC()">
							</td>
						</tr>
						<tr>
							<td>
								<div id="pwcdiv">
									<font size="2"></font>
								</div>
							</td>
						</tr>
						<tr>
							<td style="padding-top: 10px;">
								이름 : 
							</td>
						</tr>
						<tr>
							<td>
								<input type="text" class="form-control input-sm" name="name" id="name"
								 placeholder="이름을 입력하세요.">
							</td>
						</tr>
						<tr>
							<td style="padding-top: 30px;">
								성별 : 
							</td>
						</tr>
						<tr>
							<td>
								<label for="male">남자</label>
								<input type="radio" name="sex" id="male" value="남자">
								<label for="female">여자</label>
								<input type="radio" name="sex" id="female" value="여자">
							</td>
						</tr>
						<tr>
							<td style="padding-top: 30px;">
								생년월일 :  
							</td>
						</tr>
						<tr>
							<td>
								<select name="year" id="year">
									<c:forEach var="i" begin="1900" end="2016">
										<option selected="selected" value="${ i }">${ i }</option>
									</c:forEach>
								</select>년
								<select name="mon" id="mon">
									<c:forEach var="i" begin="1" end="12">
										<option value="${ i }">${ i }</option>
									</c:forEach>
								</select>월
								<select name="day" id="day">
									<c:forEach var="i" begin="1" end="31">
										<option value="${ i }">${ i }</option>
									</c:forEach>
								</select>일
							</td>
						</tr>
						<tr>
							<td style="padding-top: 30px;">
								이메일 :  
							</td>
						</tr>
						<tr>
							<td>
								<input style="width: 130px" type="text"name="email1" id="email1"/>
								@
								<input id="email2" type="text" value="" style="width: 140px" list="emaillist" name="email2" placeholder="직접 입력하세요"/>
									<datalist id="emaillist">
										<option value="naver.com">
										<option value="gmail.com">
										<option value="daum.net">
										<option value="nate.com">
									</datalist>
							</td>
						</tr>
						<tr>
							<td style="padding-top: 30px;">
								주소 :  
							</td>
						</tr>
						<tr>
							<td>
								<input  style="width: 100px; margin-bottom: 10px;"type="text" id="address1" name="address1" readonly/>
								<button class="btn btn-default btn-sm" type="button" id="zipcode">우편번호</button>
								<input style="width: 300px; margin-bottom: 10px" type="text" id="address2" name="address2" readonly/> <br>
								<input style="width: 300px" type="text" id="address3" name="address3"/>
							</td>
						</tr>
						<tr>
							<td style="padding-top: 30px;">
								전화번호 :  
							</td>
						</tr>
						<tr>
							<td>
								<select name="phone1" id="phone1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
								</select>-
								<input type="text" name="phone2" style="width: 100px" id="phone2" onblur="javascript:num()"/>-
								<input type="text" name="phone3" style="width: 100px" id="phone3" onblur="javascript:num()"/>
							</td>
						</tr>
						<tr>
							<td>
								<div id="teldiv"></div>
							</td>
						</tr>
						<tr>
							<td style="padding-top: 30px;">
								알림설정 :  
							</td>
						</tr>
						<tr>
							<td>
								<label for="kakaotalk">카카오톡</label>
								<input type="radio" name="alarm" id="kakaotalk" value="kakaotalk">&nbsp;&nbsp;
								<label for="sms">sms</label>
								<input type="radio" name="alarm" id="sms" value="sms">&nbsp;&nbsp;
								<label for="emailradio">email</label>
								<input type="radio" name="alarm" id="emailradio" value="email">&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td style="padding-top: 30px; text-align: center;">
								<button class="btn btn-default" type="reset">다시쓰기</button>
								<button class="btn btn-default" type="submit">회원가입</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
	
	
</body>
	
	<script type="text/javascript">
  	
		$("form").submit(function() {
			$("#id").trigger("blur");
			$("#pw").trigger("blur");
			$("#pwc").trigger("blur");
			$("#phone2").trigger("blur");
			$("#phone3").trigger("blur");
			var id = $("#id").val();
			var iddiv = $("#iddiv").text();
			var pw = $("#pw").val();
			var pwdiv = $("#pwdiv").text();
			var pwc = $("#pwc").val();
			var pwcdiv = $("#pwcdiv").text();
			var name = $("#name").val();
			var sex = $(":radio[name='sex']:checked").length;
			var email1 = $("#email1").val();
			var email2 = $("#email2").val();
			var address1 = $("#address1").val();
			var address2 = $("#address2").val();
			var address3 = $("#address3").val();
			var phone2 = $("#phone2").val();
			var phone3 = $("#phone3").val();
			var phonediv = $("#teldiv").text();
			var alarm = $(":radio[name='alarm']:checked").length;

			if (id == "") {
				alert("아이디를 입력하지 않으셨습니다.");
				return false;
			} else if (iddiv != "사용 가능") {
				alert("사용 가능한 아이디를 입력해주시길 바랍니다.");
				return false;
			} else if (pw == "") {
				alert("비밀번호를 입력하지 않으셨습니다.");
				return false;
			} else if (pwdiv != "사용 가능") {
				alert("사용 가능한 비밀번호를 입력해주시길 바랍니다.")
				return false;
			} else if (pwc == "") {
				alert("비밀번호를 확인하지 않으셨습니다.")
				return false;
			} else if (pwcdiv != "일치 합니다") {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			} else if (name == "") {
				alert("이름을 입력하지 않으셨습니다.");
				return false;
			} else if (sex < 1) {
				alert("성별을 선택하지 않으셨습니다.");
				return false;
			} else if (email1 == "" || email2 == "") {
				alert("이메일을 확인해 주시길 바랍니다.");
				return false;
			} else if (address1 == "" || address2 == "" || address3 == "") {
				alert("주소를 확인해 주시길 바랍니다.");
				return false;
			} else if (phone2 == "" || phone3 == "") {
				alert("전화번호를 확인해 주시길 바랍니다.");
				return false;
			} else if (phonediv != "") {
				alert("전화번호에 숫자만 입력해주세요");
				return false;
			} else if (alarm < 1) {
				alert("알림설정을 확인해 주시길 바랍니다.");
				return false;
			}

		});

		$("#zipcode").click(function() {
			var url = "showPopup";
			var popname = "pop";
			var size = "width=400, height=500";
			window.open(url, popname, size);
		});
		$("#email2").click(function() {
			document.getElementById("email2").value = "";
		});

		function myID() {

			var id = document.getElementById("id");
			var searchid = id.value.trim();
			var iddiv = document.getElementById("iddiv");

			var params = "key=" + encodeURIComponent(searchid);
			sendRequest("selleridcheck", params, callback, "post");
		}

		function callback() {
			if (httpRequest.readyState == 4) {
				if (httpRequest.status == 200) {
					var rcvData = httpRequest.responseText;
					if (rcvData == 0) {
						iddiv.innerHTML = "<font size='2' style='color: green'>사용 가능</font><p style='height: 8px'>";
					} else if (rcvData == 1) {
						iddiv.innerHTML = "<font size='2' style='color: red'>영문/숫자를 이용하시기 바랍니다.(한글은 사용 불가능합니다.)</font><p style='height: 8px'>";
					} else {
						iddiv.innerHTML = "<font size='2' style='color: red'>아이디 중복되거나 탈퇴된 아이디입니다.</font><p style='height: 8px'>";
					}
				} else {
					alert("##### 실패 : " + httpRequest.status);
				}
			}
		}

		function myPW() {
			var pw = document.getElementById("pw");
			var pwvalue = pw.value;

			var pattern = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,16}$/;

			var pwdiv = document.getElementById("pwdiv");

			if (pattern.exec(pwvalue)) {
				pwdiv.innerHTML = "<font size='2' style='color: green'>사용 가능</font><p style='height: 8px'>";
			} else {
				pwdiv.innerHTML = "<font size='2' style='color: red'>6~16자, 영문/숫자/특수문자를 모두 사용하세요</font><p style='height: 8px'>";
			}
		}

		function myPWC() {
			var pw = document.getElementById("pw");
			var pwvalue = pw.value;
			var pwc = document.getElementById("pwc");
			var pwcvalue = pwc.value;

			var pwcdiv = document.getElementById("pwcdiv");

			if (pwvalue == pwcvalue) {
				if (pwvalue != "") {
					pwcdiv.innerHTML = "<libel style='color: green' >일치 합니다</libel><p style='height: 8px'>";
				}

			} else {
				pwcdiv.innerHTML = "<font size='2' style='color: red'>불일치(재확인)</font><p style='height: 8px'>";
			}
		}

		function num() { //번호 정규식
			var pattern = /^[0-9]*$/;
			var tel2 = document.getElementById("phone2");
			var tel3 = document.getElementById("phone3");
			var teldiv = document.getElementById("teldiv");
			var telvalue = tel2.value + tel3.value;

			if (pattern.exec(telvalue)) {
				teldiv.innerHTML = "";
			} else {
				teldiv.innerHTML = "&nbsp;&nbsp;<font size='2' style='color: red'>숫자만 입력</font>";
			}
		}
	</script>

</html>











