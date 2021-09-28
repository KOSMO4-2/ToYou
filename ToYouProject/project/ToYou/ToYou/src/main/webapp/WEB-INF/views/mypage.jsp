<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- 성연추가) jstl 문자열 자르기 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- 성연추가) jstl 문자열 자르기 -->
<!DOCTYPE html>
<html>
<head>
<title>You To You &mdash; Youtuber Management</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Overpass:300,400,500|Dosis:400,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="/css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="/css/animate.css">
<link rel="stylesheet"
	href="/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/css/magnific-popup.css">
<link rel="stylesheet" href="/css/aos.css">
<link rel="stylesheet" href="/css/ionicons.min.css">
<link rel="stylesheet"
	href="/css/bootstrap-datepicker.css">
<link rel="stylesheet"
	href="/css/jquery.timepicker.css">
<link rel="stylesheet" href="/css/flaticon.css">
<link rel="stylesheet" href="/css/icomoon.css">
<link rel="stylesheet" href="/css/fancybox.min.css">
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
<!------Header-------->
<%@ include file="layout/header.jsp"%>
<%-- 
<jsp:include page="/WEB-INF/views/include/header.jsp" flush="true"></jsp:include> --%>
<!------Header-------->
	<div class="block-31" style="position: relative;">
		<div class="owl-carousel loop-block-31 ">
			<div class="block-30 block-30-sm item"
				style="background-image: url('${banner}');"
				data-stellar-background-ratio="0.5">
				<div class="container">
					<div
						class="row align-items-center justify-content-center text-center">
						<div class="col-md-7">
							<h2 class="heading mb-5">${title }</h2>
							<!-- <p style="display: inline-block;"><a href="https://vimeo.com/channels/staffpicks/93951774"  data-fancybox class="ftco-play-video d-flex"><span class="play-icon-wrap align-self-center mr-4"><span class="ion-ios-play"></span></span> <span class="align-self-center">Watch Video</span></a></p> -->
							<!-- 메인 중앙 검색창
               <div class="input-group">
                   <input type="text" class="form-control" placeholder="검색어를 입력하세요">
                   <span class="input-group-btn">
                   <button class="btn btn-secondary" type="button">검색</button>
                   </span>
              </div> END 메인 중앙 검색창 -->
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>




	<div class="row mypro">
		<div class="col-md-6 col-lg-3 mb-5">
			<div class="person-donate text-center">
				<img src="${profile}"
					alt="Image placeholder" class="img-fluid">
				<div class="donate-info">
					<h2>${title }</h2>
					<span class="time d-block mb-3">${sub }</span>
					<p>
						우리 채널 탄신일 :  <span class="text-success">${birth }</span> <br> <em>-</em>
						<a href="#" class="link-underline fundraise-item">
							${explain }</a>
					</p>
				</div>
			</div>
		</div>
	</div>



<!---------------------------------- Tab MENU----------------------------------->

	<div class="site-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<ul class="nav nav-tabs">
						<!-- tab.start -->
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#comm01">채널관리</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#comm02">커뮤니티관리</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#comm03">친구관리</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#comm04">개인정보관리</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#comm05">결제 대시보드</a></li>
					</ul>
					<!-- tab.end -->

<!------------------------------- Tab contents START------------------------------->
					<div class="tab-content">
						<!-- -- 01 채널관리 탭 컨텐츠.start -->
						<div class="tab-pane fade show active" id="comm01">
							<div class="container">
								<div class="row">
									<div class="col-md-12 text-center cate_rec_title">
										<h4 class="title_m_tx text-left">나의 채널 분석</h4>
										<div class="container">
											<div class="row">
												<div class="col-md-6">그래프1</div>
												<div class="col-md-6">그래프2</div>
											</div>

											<div class="row">
												<div class="col-md-6">그래프1</div>
												<div class="col-md-6">그래프2</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- -- 01 채널관리 탭 컨텐츠.end -->

						<!-- -- 02 커뮤니티관리 탭 컨텐츠.start -->
						<div class="tab-pane fade" id="comm02">
							<div class="container">
								<div class="row">
									<div class="col-md-12 text-center cate_rec_title">


										<h4 class="title_m_tx text-left">커뮤니티관리 <div class="form-row float-right"><a href='/auth/communityCreate'><button type="button" class="btn btn-default">커뮤니티 생성</button></a></h4>
										</div>

										<div class="container">
										<hr><br>
										<h5>내가 만든 커뮤니티 목록</h5>
											<div class="row">
											
											<!-- jstl 반복할 곳                  -->
												<div class="col-md-3" style="border: 2px solid black;background-color:#fcffb0;">
													<div class="person-donate text-center">
														<img src="${profile}" alt="Image placeholder"
															class="img-fluid">
														<div class="donate-info">
															<p>
																<br> <a href="#"
																	class="link-underline fundraise-item"> 커뮤니티명 </a>
																<br>500 명
															</p>
															<span class="time d-block mb-3">호스트명</span>
														</div>
													</div>
												</div>
												<div class="col-md-2" style="border: 2px solid black">
													<div class="person-donate">
														
														<div class="donate-info">
															<p>
																<br>  오늘 올라온 공지<br> - 개
																<br>
																<hr>
																오늘 올라온 글<br> - 개
															<p>
															
														</div>
													</div>
												</div>
												<div class="col-md-1">
												</div>
												
												<div class="col-md-3" style="border: 2px solid black;background-color:#fcffb0;">
													<div class="person-donate text-center">
														<img src="${profile}" alt="Image placeholder"
															class="img-fluid">
														<div class="donate-info">
															<p>
																<br> <a href="#"
																	class="link-underline fundraise-item"> 커뮤니티명 </a>
																<br>500 명
															</p>
															<span class="time d-block mb-3">호스트명</span>
														</div>
													</div>
												</div>
												<div class="col-md-2" style="border: 2px solid black">
													<div class="person-donate">
														
														<div class="donate-info">
															<p>
																<br>  오늘 올라온 공지<br> - 개
																<br>
																<hr>
																오늘 올라온 글<br> - 개
															
															
														</div>
													</div>
												</div>
											<!-- jstl 반복할 곳                  -->
											
											</div>
											<hr><br>
											<h5>내가 가입한 커뮤니티 목록</h5>
											<div class="row">
											
											<!-- jstl 반복할 곳                  -->
												<div class="col-md-3" style="border: 2px solid black;background-color:#fcffb0;">
													<div class="person-donate text-center">
														<img src="${profile}" alt="Image placeholder"
															class="img-fluid">
														<div class="donate-info">
															<p>
																<br> <a href="#"
																	class="link-underline fundraise-item"> 커뮤니티명 </a>
																<br>500 명
															</p>
															<span class="time d-block mb-3">호스트명</span>
														</div>
													</div>
												</div>
												<div class="col-md-2" style="border: 2px solid black">
													<div class="person-donate">
														
														<div class="donate-info">
															<p>
																<br>  오늘 올라온 공지<br> - 개
																<br>
																<hr>
																오늘 올라온 글<br> - 개
														
															
														</div>
													</div>
												</div>
											<!-- jstl 반복할 곳                  -->
											
											</div>

											
										</div>
									</div>
								</div>
							</div>
						
						<!-- -- 02 커뮤니티관리 탭 컨텐츠.end -->

						<!-- -- 03 친구관리 탭 컨텐츠.start -->
						<div class="tab-pane fade" id="comm03">
							<div class="container">
								<div class="row">
									<div class="col-md-12 text-center cate_rec_title">
										<h4 class="title_m_tx text-left">친구관리</h4>
										<div class="container">
											<div class="row">
												<div class="col-md-6">그래프1</div>
												<div class="col-md-6">그래프2</div>
											</div>

											<div class="row">
												<div class="col-md-6">그래프1</div>
												<div class="col-md-6">그래프2</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- -- 03 친구관리 탭 컨텐츠.end -->


						<!-- -- 04 개인정보관리 탭 컨텐츠.start -->
						<div class="tab-pane fade" id="comm04">
							<div class="container">
								<div class="row">
									<div class="col-md-12 text-center cate_rec_title">
										<h4 class="title_m_tx text-left">개인정보관리</h4>
										<div class="container">
											<div class="row">
												<div class="col-md-6">그래프1</div>
												<div class="col-md-6">그래프2</div>
											</div>

											<div class="row">
												<div class="col-md-6">그래프1</div>
												<div class="col-md-6">그래프2</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- -- 04 개인정보관리 탭 컨텐츠.end -->
		
		
						<!-- -- 05 결제 대시보드 탭 컨텐츠.start -->
						<div class="tab-pane fade" id="comm05">
							<div class="container">
								<div class="row">
									<div class="col-md-12 text-center cate_rec_title">
									<!-- 성연추가 -->
									
									
										<br>
										
										<h4 class="title_m_tx text-center">${principal.user.userName}님의 결제 대시보드</h4>
										
										<br>
										<div class="container">
										
											<div class="row">
												<!-- 사용중인 등급 / 전체 유저의 사용 서비스 조회 시작 -->
												
												<!-- 사용중인 등급 시작-->
												<div class="col-sm-6">
													<table class="table table-sm col-md-1 text-center">
														<thead class="thead-light">
															<tr>
																<th scope="col">사용중인 등급</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td scope="row">
																	<c:if test="${payInfo == 0}">
																		<h1>BASIC</h1>
																	</c:if>
																	<c:if test="${payInfo == 1}">
																		<h1>STANDARD</h1>
																	</c:if>
																	<c:if test="${payInfo == 2}">
																		<h1>STARTUP</h1>
																	</c:if>
																	<c:if test="${payInfo == 3}">
																		<h1>PROFESSIONAL</h1>
																	</c:if>
																</td>														
															</tr>
														</tbody>
													</table>
												</div>					
												<!-- 사용중인 등급 종료 -->
												
												<!-- 전체 유저의 사용 서비스 조회 시작 -->
												<div class="col-sm-6">
													<table class="table table-sm col-md-1 text-center">
														<thead class="thead-light">
															<tr>
																<th scope="col">전체 회원의 구독 현황</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td scope="row">
																	<iframe src="http://192.168.56.101:5601/app/dashboards#/create?embed=true&_g=(filters:!(),refreshInterval:(pause:!t,value:0),time:(from:now%2Fd,to:now%2Fd))&_a=(description:'',filters:!(),fullScreenMode:!f,options:(hidePanelTitles:true,useMargins:!t),panels:!((embeddableConfig:(),gridData:(h:10,i:'4c0778d7-22bb-42e9-b988-2b328793030c',w:50,x:0,y:0),id:dd8a20f0-2037-11ec-86b0-d73776e2cdf4,panelIndex:'4c0778d7-22bb-42e9-b988-2b328793030c',type:lens,version:'7.10.2')),query:(language:kuery,query:''),timeRestore:!f,title:'',viewMode:edit)&hide-filter-bar=true" height="300" width="300" frameborder="0"></iframe>
																</td>														
															</tr>
														</tbody>
													</table>
												</div>
												<!-- 전체 유저의 사용 서비스 조회 종료 -->
											</div>
											<!-- 사용중인 등급 / 전체 유저의 사용 서비스 조회 종료 -->

											<!-- 결제내역조회 시작 -->
											<div class="row">
												<div class="col-sm-12 text-center">
													<div class="table title"><h4 class="mid-title-thin">결제내역조회</h4></div>
														<table class="table table-sm col-md-7">
															<thead class="thead-light">
																<tr>
																	<th scope="col">승인번호</th>
																	<th scope="col">구매정보</th>
																	<th scope="col">결제금액</th>
																	<th scope="col">결제시간</th>
																	<th scope="col">납부확인</th>
																</tr>
															</thead>
															<tbody id="hungryList">
															

															<c:forEach items="${productBuyLogList}" var="list">
															
																<tr>
																	<th scope="row">${list.productBuyLogNo}</th>
																	<td>
																		<c:set var="TextValue" value="${list.productBuyLogDate }"/>
																		${fn:substring(TextValue,2,4) }년
																		${fn:substring(TextValue,5,7) }월&nbsp;
																		<span style="color:red">
																		<c:if test='${list.productNo == "1"}'>STANDARD</c:if>
																		<c:if test='${list.productNo == "2"}'>STARTUP</c:if>
																		<c:if test='${list.productNo == "3"}'>PROFESSIONAL</c:if>
																		</span>&nbsp;
																		1개월																	
																	</td>
																	<td>
																		<c:if test='${list.productNo == "1"}'>29,000원</c:if>
																		<c:if test='${list.productNo == "2"}'>59,000원</c:if>
																		<c:if test='${list.productNo == "3"}'>99,000원</c:if>																	
																	</td>
																	<td>${list.productBuyLogDate}</td>
																	<td>Done</td>															
																</tr>
															</c:forEach>
															
															
															</tbody>
														</table>
													</div>
												</div>
												<!-- 결제내역조회 종료 -->
											</div>
										</div>
										
										
									<!-- 성연추가 -->
									</div>
								</div>
							</div>
						
						<!-- -- 05 결제 대시보드 탭 컨텐츠.end -->
						<!-- -- 05 결제 대시보드 탭 컨텐츠.end -->
					</div>
				</div>

			</div>
		</div>
		
	</div>




<!-- Footer -->
<%@ include file="layout/footer.jsp"%>
<%-- 
<jsp:include page="/WEB-INF/views/include/footer.jsp" flush="true"></jsp:include>
 --%><!-- Footer -->
 
</body>
</html>