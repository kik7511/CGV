<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="ko">
<head>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
</head>
<body>
	<div>
		<div class="row">
			<div class="col-3">
				<select name="06Lv1" id="06Lv1" onchange="setSelectBox(this)">
					<option value="">전체</option>
					<c:forEach items="" var="" varStatus="">
						<option></option>					
					</c:forEach>
				</select> 
			</div>
			<div class="col-3">
				<select name = "06Lv2" id="06Lv2" onchange="setSelectBox(this>)" disabled>
					<option value="">전체</option>
				</select>
			</div>
		</div>
	</div>
</body>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/188ea9a4c6.js" crossorigin="anonymous"></script>
	<script>
		function setSlectBox(o){
			var selectVal = o.value;
			var upper = $(o).parent().parent(); //셀렉트 박스의 상위 객체
												//위 코드에서 <div class="row"> 가 해당
			var cnt = $('select', upper).size();// 셀렉트 박스 갯수
			var idx = $('select' upper).index(o);//현재 셀렉트 박스의 순서
			var depth = idx + 1; //선택한 selectbox가 몇 depth인지.
			var level = 4 + idx; //db에 저장되어 있는 level이 3 level이라
								 //다음 레벨을 구하기 위해 기본값을 4level로 잡았다.
			var selectBox = $('select', upper).eq(depth); //선택한 하위값 selectbox
			var text = '<option value="">전체</option>';//기본으로 설정할 값.
			var selectVal02 = selectVal.substring(2,4);//선택한 코드값으로 하위 코드값을 찾기 위함
			
			if(selectVal == ''){ // 전체를 선택했을 경우
				$('select:gt(' + idx + ')', upper).html(text);//선택한 하위값들의 값 전체로 변경
				$('select:gt(' + idx + ')', div).attr("disabled", true);//선택한 하위값들 disabled
				return
			}
			
			$.post("setDirectoryList_ajax.do"
					, {"level":level, "selectVal":selectVal, "selectVal02":selectVal02}
					, function(res){
						if(res.result > 0){
							var dirList = eval(res.resultJlist); // jsonArray의 값을 list로
							var loop = res.resultCnt; // 반복할 횟수(뿌려줄 리스트의 size)
							
							$('select:gt(' + idx + ')', upper).html(text); //select한 하위값들을 모두 전체로
							selectBox.attr("disabled", false); // 선택한 하위값의 disable을 풀어준다.
							for(var i=0; i<loop; i++){
								var list = dirList[i];
								//객체를 가져와 append 시킨다.
								selectBox.append('<option value="' + list.selectVal + '")' + list.valName + '</option>');
							}
						}
					});
			}
	</script>
</html>