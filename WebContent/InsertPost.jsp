<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Posting</title>
	 <!-- https://fonts.google.com/ -->
	 <link rel="stylesheet" href="fontawesome/css/all.min.css">
	 <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-xtra-blog.css" rel="stylesheet">
    <link rel="shortcut icon" href="img/favicon2.ico">
<style type="text/css">
@font-face {
    font-family: 'NanumSquareRound';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}	
.mlogo{
    width:220px;
    }
</style>
</head>
<body>
	<header class="tm-header" id="tm-header">
        <div class="tm-header-wrapper">
            <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="tm-site-header">
                <div class="mb-3 mx-auto"><img alt="4TeamLogo" src="img/logo.png" class="mlogo"></div>
            </div>
            <nav class="tm-nav" id="tm-nav">            
                <ul>
                    <li class="tm-nav-item"><a href="userComment_Ctrl.jsp?action=main" class="tm-nav-link">
                        <i class="fas fa-home"></i>
                        Blog Home
                    </a></li>
                    <li class="tm-nav-item active"><a href="InsertPost.jsp" class="tm-nav-link">
                        <i class="fas fa-pen"></i>
                        Posting
                    </a></li>
                    <li class="tm-nav-item"><a href="Login.jsp" class="tm-nav-link">
                        <i class="fas fa-users"></i>
                        Login / Sign-up
                    </a></li>
                    <li class="tm-nav-item"><a href="post_ctrl.jsp?action=post" class="tm-nav-link">
                        <i class="far fa-comments"></i>
                        Category / ??????
                    </a></li>
                </ul>
            </nav>
            <div class="tm-mb-65">
                <a href="https://facebook.com" class="tm-social-link">
                    <i class="fab fa-facebook tm-social-icon"></i>
                </a>
                <a href="https://twitter.com" class="tm-social-link">
                    <i class="fab fa-twitter tm-social-icon"></i>
                </a>
                <a href="https://instagram.com" class="tm-social-link">
                    <i class="fab fa-instagram tm-social-icon"></i>
                </a>
                <a href="https://linkedin.com" class="tm-social-link">
                    <i class="fab fa-linkedin tm-social-icon"></i>
                </a>
            </div>
            <p class="tm-mb-80 pr-5 text-white">
                Xtra Blog is a multi-purpose HTML template from TemplateMo website. Left side is a sticky menu bar. Right side content will scroll up and down.
            </p>
        </div>
    </header>
    <div class="container-fluid">
        <main class="tm-main">
            <!-- Search form -->
            <div class="row tm-row">
                <div class="col-12">
                    <form method="GET" class="form-inline tm-mb-80 tm-search-form">                
                        <input class="form-control tm-search-input" name="query" type="text" placeholder="Search..." aria-label="Search">
                        <button class="tm-search-button" type="submit">
                            <i class="fas fa-search tm-search-icon" aria-hidden="true"></i>
                        </button>                                
                    </form>
                </div>                
            </div>            
            <div class="row tm-row tm-mb-45">
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55">
              
                    
                </div>
                
            </div>
            <div class="row tm-row tm-mb-40">
                <div class="col-12">                    
                    <div class="mb-4">
                        <h2 class="pt-2 tm-mb-40 tm-color-primary tm-post-title" class="lmargin">???????????????</h2>
                        <form action="post_ctrl.jsp?action=insertPostDB" method="post" style="display:block; width:1000px;" class="mb-5 ctext" >
						<input type="hidden" name="writer" value="${userInfoData.name}">
						<input type="hidden" name="p_user" value="${userInfoData.id}">
						<div class="mb-4">						
							<input class="form-control" style="width:100%; border-color:white; font-size:25px;" name="title" type="text" placeholder="????????? ???????????????">
							
						</div>
						 <hr class="tm-hr-mycss">												
						<div class="mb-4">
						<label class="col-sm-3 col-form-label tm-color-primary">??????</label>
                                <textarea class="form-control mr-0 ml-auto" name="content" id="message" rows="8" required style="height:800px;"></textarea>                                
                            </div>
                        <div class="mb-4">
						<label  class=" col-form-label tm-color-primary" style="font-size:28px;">category</label>							
							<select name="category">
								<option selected>??????</option>
								<option>??????</option>
								<option>?????????</option>
								<option>??????</option>
								<option>??????</option>
								<option>??????</option>
							</select>
						</div>    
						<div class="text-right">
							<button type="submit" class="tm-btn tm-btn-primary tm-btn-small">??? ????????????</button>
						</div>
					</form>	
                                              
                    </div>                    
                </div>
            </div>
                       
            <div class="row tm-row tm-mb-60">
                <div class="col-12">
                    <hr class="tm-hr-primary  tm-mb-55">
                </div>                
               
                
               
            </div>        
            <footer class="row tm-row">
                <div class="col-md-6 col-12 tm-color-gray">
                    Design: <a rel="nofollow" target="_parent" href="https://templatemo.com" class="tm-external-link">TemplateMo</a>
                </div>
                <div class="col-md-6 col-12 tm-color-gray tm-copyright">
                    Copyright 2020 Xtra Blog Company Co. Ltd.
                </div>
            </footer>
        </main>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/templatemo-script.js"></script>
</body>
</html>