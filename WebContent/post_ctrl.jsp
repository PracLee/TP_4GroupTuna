<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, model.likeInfo.LikeInfoVO, model.post.PostVO, model.comments.CommentsVO"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="PVO" class="model.post.PostVO" />
<jsp:useBean id="PDAO" class="model.post.PostDAO" />
<jsp:useBean id="LVO" class="model.likeInfo.LikeInfoVO" />
<jsp:useBean id="LDAO" class="model.likeInfo.LikeInfoDAO" />
<%
	String action = request.getParameter("action");
	if(action.equals("main")){
		request.setAttribute("datas", PDAO.SelectAll());
		pageContext.forward("main.jsp");
	}else if(action.equals("commentPost")){
		ArrayList<PostVO> datas = PDAO.SelectAll();
		ArrayList<CommentsVO> CommentDatas = (ArrayList<CommentsVO>)request.getAttribute("CommentDatas");
		ArrayList<Integer> commentsCnt = new ArrayList(datas.size());
		for(int i =0; i<CommentDatas.size();i++){
			int index = (CommentDatas.get(i).getC_post()-1);
			commentsCnt.set(index, (commentsCnt.get(index)+1));	//	commentsCnt index = postnum - 1
		}
		
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post·Like Controller</title>
</head>
</html>