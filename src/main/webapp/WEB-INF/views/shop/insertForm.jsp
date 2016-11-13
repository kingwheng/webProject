<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="\resources\files_js\jquery.ui.datepicker-ko.js"></script>
<!-- // jQuery UI CSS파일  -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<!-- // jQuery 기본 js파일 -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!-- // jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>

<style>
input[type=text]{
    width: 40%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

select {
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

#datepicker1, #datepicker2{
	width: 15%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;

}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

textarea {
    width: 100%;
    height: 150px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    font-size: 16px;
    resize: none;
}
</style>
<script type="text/javascript">
// 대분류
var firstList = new Array("채소","과일","곡류","육류","수산물","가공식품");

// 중분류

var secondList1 = new Array("쌈채소","양파/당근/고추/마늘/오이","파프리카/양배추/양상추","뿌리채소","나물류/새싹류","버섯류","씨앗","기타");
var secondList2 = new Array("사과/배","귤/한라봉 류","메론/키위/망고","토마토/방울토마토","참외/수박","포도/딸기/블루베리","자두/복숭아","감/곶감");
var secondList3 = new Array("친환경/기능성 쌀","혼합잡곡","찹쌀/현미/흑미","보리/콩/수수/잡곡","기타");
var secondList4 = new Array("한돈","한우","선물세트","오리","닭","계란","기타");
var secondList5 = new Array("고등어/옥돔/갈치","굴비/옥돔/반건조생선","게/새우/조개/굴","장어/오징어/문어","해조류","멸치/황태/건오징어","기타해산물(해삼, 멍게)");
var secondList6 = new Array("액젓/젓갈/게장","커피/원두","유아용 간식","간식류","라면/면류","전통주","장/소스","음료");
 
// 페이지 로딩시 자동 실행  
window.onload = function(){
    var v_largectg = document.getElementById("largectg"); // SELECT TAG
      
    for (i =0 ; i<firstList.length; i++){// 0 ~ 3 
        // 새로운 <option value=''>값</option> 태그 생성
        var optionEl = document.createElement("option");
  
        // option태그에 value 속성 값으로 저장
        optionEl.value = firstList[i];
      
        // text 문자열을 새로 생성한 <option> 태그의 값으로 추가
        optionEl.appendChild (document.createTextNode(firstList[i]));
      
        // 만들어진 option 태그를 <select>태그에 추가
        v_largectg.appendChild(optionEl);
    }
  
    var v_smallctg = document.getElementById("smallctg"); // SELECT TAG
    v_smallctg.style.display = "none";  // 태그 감추기
    var v_smallctg = document.getElementById("lastSelect"); // SELECT TAG
    v_smallctg.style.display = "none";  // 태그 감추기
  
}

// 대분류 선택시
function changelargectg(){
    var v_largectg = document.getElementById("largectg"); // SELECT TAG
    var idx = v_largectg.options.selectedIndex;     // 선택값 0 ~ 3
     

    if (idx < 1 && idx > 6){
        return;
    }
  
 
    smallctgFill(idx);   // 중분류 생성
}


function smallctgFill(idx){
    var v_smallctg = document.getElementById("smallctg"); // SELECT TAG
    var v_secondSelect = document.getElementById("lastSelect");
 
    var data = null;
  
    if (idx == 0) {
    	v_smallctg.style.display = "none";  // 중분류 태그 감추기
        v_secondSelect.style.display = "none";
        return;
    }
  
    if (idx == 1){
     data = secondList1
   
     }
    if (idx == 2){
     data = secondList2
     
     }
    if (idx == 3){
        data = secondList3
        
        }
    if (idx ==4){
        data = secondList4
        
        }
    if (idx == 5){
        data = secondList5
        
        }
    if (idx == 6){
        data = secondList6
        
        }

  

    v_smallctg.innerHTML = "";  // 태그 출력
      
    for (i =0 ; i<data.length; i++){ 
        // 새로운 <option value=''>값</option> 태그 생성
        var optionEl = document.createElement("option");
  
        // value 속성 태그에 저장
        optionEl.value = data[i];
      
        // text 문자열을 새로 생성한 <option> 태그에 추가
        optionEl.appendChild (document.createTextNode(data[i]));
      
        // 만들어진 option 태그를 <select>태그에 추가
        v_smallctg.appendChild(optionEl);
    }
  
    v_smallctg.style.display = ""; // 중분류 태그 출력
  

}

// 대분류 선택시
function changeSecondSelect(){
    var v_largectg = document.getElementById("largectg"); // SELECT TAG
    var v_secondSelect = document.getElementById("smallctg"); // SELECT TAG
    var idx = v_largectg.options.selectedIndex; 
    var idx2 = v_secondSelect.options.selectedIndex;    // 선택값 0 ~ 3
     
    // alert("select: " + selText);
    if (idx < 1 && idx > 3){
        return;
    }
  
  
    lastSelectFill(idx,idx2);   // 중분류 생성
}

function lastSelectFill(idx,idx2){
    var v_lastSelect = document.getElementById("lastSelect"); // SELECT TAG
    var data = null;
  
    if (idx == 0) {
        v_lastSelect.style.display = "none";  // 중분류 태그 감추기
        btnArea.style.display = "none";
        return;
    }
  
    if (idx == 1&&idx2 == 0){
         data = lastList1_1
        }
    if (idx == 1&&idx2 == 1){
         data = lastList1_2
        }
    if (idx == 1&&idx2 == 2){
         data = lastList1_3
        }
    if (idx == 1&&idx2 == 3){
         data = lastList1_4
        }
    if (idx == 2&&idx2 == 0){
         data = lastList2_1
        }
    if (idx == 2&&idx2 == 1){
         data = lastList2_2
        }
    if (idx == 2&&idx2 == 2){
         data = lastList2_3
        }
    if (idx == 2&&idx2 == 3){
         data = lastList2_4
        }
 
  

    v_lastSelect.innerHTML = "";  // 태그 출력
      
    for (i =0 ; i<data.length; i++){ 
        // 새로운 <option value=''>값</option> 태그 생성
        var optionEl = document.createElement("option");
  
        // value 속성 태그에 저장
        optionEl.value = data[i];
      
        // text 문자열을 새로 생성한 <option> 태그에 추가
        optionEl.appendChild (document.createTextNode(data[i]));
      
        // 만들어진 option 태그를 <select>태그에 추가
        v_lastSelect.appendChild(optionEl);
    }
  
v_lastSelect.style.display = ""; // 중분류 태그 출력
 
  
}
</script>
<body>
<div>
  <form name="frm"  action="/spring/shop/insertOne" method="post" enctype="multipart/form-data" onsubmit="return chk()">
    <label for="name">상품명</label>
    <input type="text" id="name" name="name"><br>

    <div id="sido">
    상품 분류 &nbsp;:&nbsp;
    <select id="largectg" name="largecategory" onChange="changelargectg();">
        <option value="">대분류를 선택하세요.</option>
    </select>
  
    <select id="smallctg" name="smallcategory" onChange="changeSecondSelect();">
        <option value="">소분류를 선택하세요.</option>
    </select>

</div><br>
  
   <label for="launchdate">판매시작일</label>
    <input type="text" id="datepicker1" name="launchdate">
  
     <label for="expireddate">판매종료일</label>
    <input type="text" id="datepicker2" name="expireddate"><br>
    
       <label for="price">가격</label>
    <input type="text" id="price" name="price"><br>
    
       <label for="stock">재고량</label>
    <input type="text" id="stock" name="stock"><br>
    
       <label for="from">원산지</label>
    <input type="text" id="from" name="from"><br>
    
       <label for="options">구매옵션</label>
    <input type="text" id="options" name="options"><br>
    
       <label for="delinfo">배송정보</label>
    <input type="text" id="delinfo" name="delinfo"><br>
    
    <label for="delinfo">배송비</label>
    <input type="text" id="delcharge" name="delcharge"><br>

       <label for="delop">배송옵션</label>
    <input type="text" id="delop" name="delop"><br>
    
       <label for="tn">썸네일</label>
    <input type="file" id="tn" name="tn"><br><br>
  
     <label for="d1">상품정보사진1</label>
    <input type="file" id="d1" name="d1"><br><br>
    
       <label for="d2">상품정보사진2</label>
    <input type="file" id="d2" name="d2"><br><br>
    
       <label for="d3">상품정보사진3</label>
    <input type="file" id="d3" name="d3"><br><br>
    
       <label for="d4">상품정보사진4</label>
    <input type="file" id="d4" name="d4"><br>
    
     <textarea name="text"></textarea><br>
    
    <input type="submit" value="등록하기">
  </form>
</div>
	<script type="text/javascript">
		$(function() {
			$("#datepicker1").datepicker(
					{
						showMonthAfterYear : true,
						yearSuffix : "년",
						nextText : "다음달",
						prevText : "이전달",
						dateFormat : "yy-mm-dd",
						dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
						monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월',
								'7월', '8월', '9월', '10월', '11월', '12월' ],
						monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
								'7월', '8월', '9월', '10월', '11월', '12월' ]
					});
		});
		$(function() {
			$("#datepicker2").datepicker(
					{
						showMonthAfterYear : true,
						yearSuffix : "년",
						nextText : "다음달",
						prevText : "이전달",
						dateFormat : "yy-mm-dd",
						dayNamesMin : [ '월', '화', '수', '목', '금', '토', '일' ],
						monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월',
								'7월', '8월', '9월', '10월', '11월', '12월' ],
						monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
								'7월', '8월', '9월', '10월', '11월', '12월' ]
					});
		});
		function chk(){
			var frm=document.frm;
			if(frm.name.value==""){
				alert("상품명을 입력하세요.");
				frm.name.focus();
				return false;
			}else if(frm.largectg.value==""){
				alert("대분류를 선택하세요.");
				frm.largectg.focus();
				return false;
			}else if(frm.smallctg.value==""){
				alert("소분류를 선택하세요.");
				frm.smallctg.focus();
				return false;
			}else if(frm.launchdate.value==""){
				alert("판매 시작일을 입력하세요.");
				frm.launchdate.focus();
				return false;
			}else if(frm.expireddate.value==""){
				alert("판매 종료일을 입력하세요.");
				frm.expireddate.focus();
				return false;
			}else if(frm.price.value==""){
				alert("가격을 입력하세요.");
				frm.price.focus();
				return false;
			}else if(frm.stock.value==""){
				alert("재고량을 입력하세요.");
				frm.stock.focus();
				return false;
			}else if(frm.from.value==""){
				alert("원산지를 입력하세요.");
				frm.from.focus();
				return false;
			}else if(frm.delcharge.value==""){
				alert("배송비를 입력하세요.");
				frm.delcharge.focus();
				return false;
			}else if(frm.delinfo.value==""){
				alert("배송정보를 입력하세요.");
				frm.delinfo.focus();
				return false;
			}else if(frm.delop.value==""){
				alert("배송옵션을 입력하세요.");
				frm.delop.focus();
				return false;
			}else if(frm.tn.value==""){
				alert("썸네일 사진을 등록해주세요.");
				frm.tn.focus();
				return false;
			}else if(frm.d1.value==""){
				alert("상품 사진을 최소 1장 등록해주세요.");
				frm.d1.focus();
				return false;
			}else{
				return true;
			}
		}
	</script>
</body>
</html>