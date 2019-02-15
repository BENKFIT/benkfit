<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Template/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
<script>
$("#item").val(); 
</script>
</head>
<body class="body">
	<%@ include file="../Template/top.jsp"%>
	<div class="wrapper">
	<form name="mypage" method="post">
		<div class="mypage">
			<h1>My Page</h1>
			<hr>
			<div id="tab0" class="tab_content">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4>User Profile</h4>
					</div>
					<div class="panel-body">
						<div class="col-md-4 col-xs-12 col-sm-6 col-lg-4">
							<img alt="User Pic"
								src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg"
								id="profile-image1" class="img-circle img-responsive">
						</div>
						<div class="col-md-8 col-xs-12 col-sm-6 col-lg-8">
							<div class="User_Profile">
								<h2>${usVO.c_name} [${usVO.c_id}]</h2>
							</div>
							<hr>
							<ul class="User_Profile details">
								<li><p>
										<span class="glyphicon glyphicon-phone one"
											style="width: 50px;"></span> ${usVO.c_hp}
									</p></li>
								<li><p>
										<span class="glyphicon glyphicon-envelope one"
											style="width: 50px;"></span> ${usVO.c_email}
									</p></li>
								<li><p>
										<span class="glyphicon glyphicon-ok-circle"
											style="width: 50px;"></span> ${usVO.c_regDate}
									</p></li>
							</ul>
							<hr>
							<div class="col-sm-12 col-xs-8 tital ">
									<button class="btn2 btn2-success" onclick="move(6)">알림</button>&nbsp;
									<button class="btn2 btn2-success"  onclick="move(7)">qrcode</button>&nbsp;
									<button class="btn2 btn2-success" onclick="move(8)">정보수정</button>&nbsp; 
									<button class="btn2 btn2-success"  onclick="move(9)">내서류</button>&nbsp;
									<button class="btn2 btn2-success"  onclick="move(5)">이체한도</button>&nbsp;
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="tab1" class="tab_content">
				<!--Content-->
				<h3 >예금관리</h3>			
				<hr>
				<table class="table table-hover">
					<thead id="mypage_thead">
						<tr>
							<th>번호</th>
							<th>계좌명</th>
							<th>계좌번호</th>
							<th>잔액</th>
							<th>조회/이체</th>
						</tr>
					</thead>
					<tbody>
					<c:set var="num" value="1"> </c:set>
					<c:forEach var="cheq" items="${cheq}">
						<tr>
							<td>${num}</td>
							<td>${cheq.cheq_num} </td>
							<td>${cheq.myCheq_account} </td>
							<td>${cheq.myCheq_amount}</td>
							<td>	
								<input type="hidden" name="delCheq" value="${cheq.myCheq_account}">
								<button class="btn2 btn2-success" onclick="move(1)" <%-- name="delCheq" value="${cheq.myCheq_account}" --%>>조회</button>&nbsp;
								<button class="btn2 btn2-danger" onclick="move(2)">해지</button>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<h3>적금관리</h3>
				<hr>
				<table class="table table-hover">
					<thead id="mypage_thead">
						<tr>
							<th>번호</th>
							<th>계좌명</th>
							<th>계좌번호</th>
							<th>잔액</th>
							<th>조회/이체</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="sav" items="${sav}">
						<tr>
							<td>${num}</td>
							<td>${sav.mySav_name} </td>
							<td>${sav.mySav_account} </td>
							<td>${sav.mySav_amount}</td>
							<td>
								<button class="btn2 btn2-success" onclick="move(13)">조회
								</button>&nbsp;
								<button class="btn2 btn2-danger" onclick="move(14)">해지</button>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<h3>대출관리</h3>
				<hr>
				<table class="table table-hover">
					<thead id="mypage_thead">
						<tr>
							<th>대출상품번호</th>
							<th>계좌번호</th>
							<th>잔액</th>
							<th>대출일</th>
							<th>만기일</th>
							<th>조회/상환</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="loan" items="${loan}">
						<tr>
							<td>${loan.loan_num} </td>
							<td>${loan.myLoan_account} </td>
							<td>${loan.myLoan_amount}</td>
							<td>${loan.myLoan_date}</td>
							<td>${loan.myLoan_late}</td>
							<td>
								<button class="btn2 btn2-success" onclick="move(3)">조회
								</button>&nbsp;
								<button class="btn2 btn2-danger" onclick="move(4)">상환</button>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div id="tab2" class="tab_content">
			<h3>자산관리</h3> 
			<hr> 
			</div>
		</div>
		</form>
	</div>
	<%@ include file="../Template/footer.jsp"%>
</body>
</html>