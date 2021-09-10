<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, model.likeInfo.LikeInfoVO, model.post.PostVO, model.comments.CommentsVO, java.sql.Date, model.userInfo.UserInfoVO"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="PVO" class="model.post.PostVO" />
<jsp:useBean id="PDAO" class="model.post.PostDAO" />
<jsp:useBean id="LVO" class="model.likeInfo.LikeInfoVO" />
<jsp:useBean id="LDAO" class="model.likeInfo.LikeInfoDAO" />
<jsp:useBean id="UVO" class="model.userInfo.UserInfoVO" />
<%
	String action = request.getParameter("action");
	if (action.equals("main")) {
		ArrayList<PostVO> datas = PDAO.SelectAll();
		ArrayList<CommentsVO> CommentDatas = (ArrayList<CommentsVO>) request.getAttribute("CommentDatas");
		ArrayList<Integer> commentsCnt = new ArrayList<Integer>(datas.size()); // 포스트 리스트와 같은 크기를 가진 댓글수 AL생성
		for (int i = 0; i < commentsCnt.size(); i++) { // 댓글수 AL 0으로 초기화
			commentsCnt.set(i, 0);
		}
		for (int i = 0; i < CommentDatas.size(); i++) {
			int index = (CommentDatas.get(i).getC_post() - 1);
			commentsCnt.set(index, (commentsCnt.get(index) + 1)); // commentsCnt index = postnum - 1
		}
		request.setAttribute("PostList", datas); // PostList로 SelectAll 데이터를 넘김
		request.setAttribute("commentsCnt", commentsCnt); // 댓글 수 AL로 넘김 0번 인덱스에 1번 포스트의 댓글 갯수 담겨있음!
		pageContext.forward("main.jsp");
	} else if (action.equals("commentPost")) {
		ArrayList<PostVO> datas = PDAO.SelectAll();
		ArrayList<CommentsVO> CommentDatas = (ArrayList<CommentsVO>) request.getAttribute("CommentDatas");
		ArrayList<Integer> commentsCnt = new ArrayList<Integer>(datas.size()); // 포스트 리스트와 같은 크기를 가진 댓글수 AL생성
		for (int i = 0; i < commentsCnt.size(); i++) { // 댓글수 AL 0으로 초기화
			commentsCnt.set(i, 0);
		}
		for (int i = 0; i < CommentDatas.size(); i++) {
			int index = (CommentDatas.get(i).getC_post() - 1);
			commentsCnt.set(index, (commentsCnt.get(index) + 1)); // commentsCnt index = postnum - 1
		}
		request.setAttribute("PostList", datas); // PostList로 SelectAll 데이터를 넘김
		request.setAttribute("commentsCnt", commentsCnt); // 댓글 수 AL로 넘김 0번 인덱스에 1번 포스트의 댓글 갯수 담겨있음!
		pageContext.forward("ShowList.jsp");
	} else if (action.equals("selectOne")) {
		PVO.setPnum(Integer.parseInt(request.getParameter("pnum"))); // pnum값으로 찾는거니 Pnum만 세팅 후 넘겨줌
		request.setAttribute("singlePost", PDAO.SelectOne(PVO));
		pageContext.forward("showPost.jsp");
	} else if (action.equals("insertPostDB")) {
		// TODO writer colum 추가해야함
		PVO.setCategory(request.getParameter("category"));
		PVO.setContent(request.getParameter("content"));
		UVO = (UserInfoVO)session.getAttribute("UVO");	// 이름은 세션에서 VO로 저장된 UserInfoVO 사용!
		PVO.setP_user(UVO.getName()); //ID? Name?
		PVO.setTitle(request.getParameter("title"));
		PDAO.InsertDB(PVO);
		pageContext.forward("main.jsp");
	} else if(action.equals("editPost")){
		// TODO writer colum 추가해야함
		PVO.setCategory(request.getParameter("category"));
		PVO.setContent(request.getParameter("content"));
		UVO = (UserInfoVO)session.getAttribute("UVO");	// 이름은 세션에서 VO로 저장된 UserInfoVO 사용!
		PVO.setP_user(UVO.getName());
		PVO.setTitle(request.getParameter("title"));
		request.setAttribute("PostVO", PVO);			// 수정 정보를 담은 PostVO 를 PostVO로 넘겨줌
		pageContext.forward("EditPost.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post·Like Controller</title>
</head>
</html>