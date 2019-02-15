<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Template/setting.jsp"%>
<!DOCTYPE html>
<html lang="ko-KR">
<head>
<meta charset="UTF-8">
<title>Document</title>
</head>
<body>
	<%@ include file="../Template/top.jsp"%>
	<c:choose>
		<c:when test="${idChk == 0}">
			<script type="text/javascript">
				alert("비밀번호 오류");
			</script>
		</c:when>
		<c:when test="${check == 6}">
			<script type="text/javascript">
				alert("탈퇴실패 : [예금잔액이 남아있습니다]");
			</script>
		</c:when>
		<c:when test="${check == 7}">
			<script type="text/javascript">
				alert("탈퇴실패 : [대출잔액이 남아있습니다]");
			</script>
		</c:when>
		<c:when test="${check == 8}">
			<script type="text/javascript">
				alert("탈퇴실패 : [적금잔액이 남아있습니다]");
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("탈퇴완료. 안녕히가세요");
				window.location="logout";
			</script>
		</c:otherwise>
	</c:choose>

	<%@ include file ="../Template/footer.jsp" %>	
</body>
</html>