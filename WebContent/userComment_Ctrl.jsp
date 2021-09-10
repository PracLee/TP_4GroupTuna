<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" import="java.util.ArrayList, model.userInfo.UserInfoVO, model.comments.CommentsVO"%>
    
<%
	request.setCharacterEncoding("UTF-8");
%>    

<!-- 유저 빈즈클래스 -->
<jsp:useBean id="userInfoDAO" class="model.userInfo.UserInfoDAO"/>
<jsp:useBean id="userInfoVO" class="model.userInfo.UserInfoVO"/>

<!-- 댓글 빈즈클래스 -->
<jsp:useBean id="commentDAO" class="model.comments.CommentsDAO"/>
<jsp:useBean id="commentVO" class="model.comments.CommentsVO"/>

<!-- 속성 SET -->
<jsp:setProperty property="*" name="userInfoVO"/>




<!-- 로직 수행파트 -->
<%

// 요청 파라미터 변수에 저장
String action = request.getParameter("action");



///////////////////////////////////// userInfo comments   /////////////////////////////////////
///////////////////////////////////// 클라이언트 요청 별 기능수행   //////////////////////////////////////

// #개인코멘트 >> UserInfo 구현완료  (☆ID/PW찾기 제외-84Line)


//[회원가입] --- view에서 → param (id,pw) 받아야 함 
if(action.equals("signUp")){
	// 입력된 데이터로 insertDB 수행 
	boolean signUpRes = userInfoDAO.InsertDB(userInfoVO);
	
	// boolean 결과값 → request 설정
	request.setAttribute("signUpRes", signUpRes);
	
	// 페이지 이동
	pageContext.forward("Login.jsp");
	
}
//[회원가입 → 아이디 중복체크] --  View딴에서 jQuery+ajax 구현필요 (↓ 코드 지울예정)
else if(action.equals("idCheck")){
	//★ 우선은 selectAll로 for문을 돌리고 있으나....
	//   └효율성 측면을 생각했을 때 model에서 selectOne을 추가하는게 좋을지 협의 필요~
	
	// 사용자입력 ID 저장
	String userID = request.getParameter("userID");
	
	//View 전달----중복여부(true:가능/false:불가능)
	boolean idCheck = true;
	
	// DAO에서 모든 유저의 데이터 --- AL저장
	ArrayList<UserInfoVO> datas = userInfoDAO.SelectAll();
	
	// forEach를 통해 중복 데이터 있다면 --> false변환
	for(UserInfoVO vo :(ArrayList<UserInfoVO>) datas){
		if(userID.equals(vo.getName())){
			idCheck = false;
			break;
		}
	}
	
	// view에게 id가능여부 전달
	request.setAttribute("idCheck", idCheck);
	
}
//[로그인] 로그인시 session설정 → userInfoData
else if(action.equals("joinUs")){
	// 유저정보 받아오기
	UserInfoVO userInfoData = userInfoDAO.SelectOne(userInfoVO);
	
	// 유저정보 session설정
	session.setAttribute("userInfoData", userInfoData);
	
	// index 페이지 이동
	response.sendRedirect("index.jsp");
	
}
//[ID/PW찾기] ID=pw+name , PW=id
// ★model 설정 필요
else if(action.equals("infoHelp")){
	
}


// 마이페이지 --- login시 session을 setAttribute해두니 
// 				즉각적으로 불러서 사용하시면 됩니다.


//[마이페이지 → 정보수정] --- view에서 → param (id,pw,name) 모두 받아야 함
else if(action.equals("updateUser")){
	// 로그인한 사용자의 데이터를 모두 받아옴 	
	
	//결과 boolean받고
	boolean updateUser = userInfoDAO.UpdateDB(userInfoVO);
	
	//request 등록
	request.setAttribute("updateUser", updateUser);
	
	//마이페이지 이동
	pageContext.forward("Mypage.jsp");
	
}
//[마이페이지 → 회원탈퇴] session 초기화
else if(action.equals("deleteUser")){
	
	//결과 boolean받고
	boolean deleteUser = userInfoDAO.DeleteDB(userInfoVO);
		
	//정상적으로 회원탈퇴가 되었다면 → 유저 세션remove
	if(deleteUser){
		session.removeAttribute("userInfoData");		
	}
	
	//request 등록
	request.setAttribute("deleteUser", deleteUser);
	
	// index 페이지 이동
	response.sendRedirect("index.jsp");
}


%>