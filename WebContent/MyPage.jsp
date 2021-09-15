<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>MyPage</title>
	<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
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
                    <li class="tm-nav-item "><a href="userComment_Ctrl.jsp?action=main" class="tm-nav-link">
                        <i class="fas fa-home"></i>
                        Blog Home
                    </a></li>
                    <li class="tm-nav-item"><a href="InsertPost.jsp" class="tm-nav-link">
                        <i class="fas fa-pen"></i>
                        Posting
                    </a></li>
                    <li class="tm-nav-item active"><a href="Login.jsp" class="tm-nav-link">
                        <i class="fas fa-users"></i>
                        Login / Sign-up
                    </a></li>
                    <li class="tm-nav-item"><a href="post_ctrl.jsp?action=post" class="tm-nav-link">
                        <i class="far fa-comments"></i>
                        Category / 임시
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
            <div class="row tm-row">
                <div class="col-12">
                    <hr class="tm-hr-primary tm-mb-55">
                    
                </div>
            </div>
            <div class="row tm-row">
                <div class="col-lg-8 tm-post-col">
                    <div class="tm-post-full">                    
                        <div class="mb-4">
                            <h2 class="pt-2 tm-color-primary tm-post-title">Single Post of Xtra Blog HTML Template</h2>
                            <p class="tm-mb-40">June 16, 2020 posted by Admin Nat</p>
                            <p>
                                This is a description of the video post. You can also have an image instead of
                                the video. You can free download 
                                <a rel="nofollow" href="https://templatemo.com/tm-553-xtra-blog" target="_blank">Xtra Blog Template</a> 
                                from TemplateMo website. Phasellus maximus quis est sit amet maximus. Vestibulum vel rutrum
                                lorem, ac sodales augue. Aliquam erat volutpat. Duis lectus orci, blandit in arcu
                                est, elementum tincidunt lectus. Praesent vel justo tempor, varius lacus a,
                        pharetra lacus. </p>
                            <p>
                                Duis pretium efficitur nunc. Mauris vehicula nibh nisi. Curabitur gravida neque
                                dignissim, aliquet nulla sed, condimentum nulla. Pellentesque id venenatis
                                quam, id cursus velit. Fusce semper tortor ac metus iaculis varius. Praesent
                                aliquam ex vel lectus ornare tristique. Nunc et eros quis enim feugiat tincidunt
                                et vitae dui.
                            </p>
                            <span class="d-block text-right tm-color-primary">Creative . Design . Business</span>
                        </div>
                        
                        <!-- Comments -->
                        <div>
                            <h2 class="tm-color-primary tm-post-title">Comments</h2>
                            <hr class="tm-hr-primary tm-mb-45">
                            <div class="tm-comment tm-mb-45">
                                <figure class="tm-comment-figure">
                                    <img src="img/comment-1.jpg" alt="Image" class="mb-2 rounded-circle img-thumbnail">
                                    <figcaption class="tm-color-primary text-center">Mark Sonny</figcaption>
                                </figure>
                                <div>
                                    <p>
                                        가나다라마바사 아자차타카파하 가나다라마바사 아자차타카파하 가나다라마바사 아자차타카파하 가나다라마바사 아자차타카파하
                                    </p>
                                    <div class="d-flex justify-content-between">
                                        <a href="#" class="tm-color-primary">REPLY</a>
                                        <span class="tm-color-primary">June 14, 2020</span>
                                    </div>                                                 
                                </div>                                
                            </div>
                            <div class="tm-comment-reply tm-mb-45">
                                <hr>
                                <div class="tm-comment">
                                    <figure class="tm-comment-figure">
                                        <img src="img/comment-2.jpg" alt="Image" class="mb-2 rounded-circle img-thumbnail">
                                        <figcaption class="tm-color-primary text-center">Jewel Soft</figcaption>    
                                    </figure>
                                    <p>
                                        Nunc et eros quis enim feugiat tincidunt et vitae dui.
                                        Nullam consectetur justo ac ex laoreet rhoncus. Nunc
                                        id leo pretium, faucibus sapien vel, euismod turpis.
                                    </p>
                                </div>                                
                                <span class="d-block text-right tm-color-primary">June 21, 2020</span>
                            </div>
                            <form action="" class="mb-5 tm-comment-form">
                                <h2 class="tm-color-primary tm-post-title mb-4">Your comment</h2>
                                <div class="mb-4">
                                    <input class="form-control" name="name" type="text">
                                </div>
                                <div class="mb-4">
                                    <input class="form-control" name="email" type="text">
                                </div>
                                <div class="mb-4">
                                    <textarea class="form-control" name="message" rows="6"></textarea>
                                </div>
                                <div class="text-right">
                                    <button class="tm-btn tm-btn-primary tm-btn-small">Submit</button>                        
                                </div>                                
                            </form>                          
                        </div>
                    </div>
                </div>
                <aside class="col-lg-4 tm-aside-col">
                    <div class="tm-post-sidebar">
                        <hr class="mb-3 tm-hr-primary">
                        <h2 class="mb-4 tm-post-title tm-color-primary">Categories</h2>
                        <ul class="tm-mb-75 pl-5 tm-category-list">
                            <li><a href="#" class="tm-color-primary">내 게시글보기</a></li>                                                     
                            <li><a href="#" class="tm-color-primary">회원정보 변경</a></li>
                            <li><a href="#" class="tm-color-primary">회원탈퇴</a></li>
                            
                        </ul>
                        <hr class="mb-3 tm-hr-primary">
                        <h2 class="tm-mb-40 tm-post-title tm-color-primary">좋아요 누른 게시글</h2>
                        <a href="#" class="d-block tm-mb-40">
                            <figure>
                                <img src="img/img-02.jpg" alt="Image" class="mb-3 img-fluid">
                                <figcaption class="tm-color-primary">Duis mollis diam nec ex viverra scelerisque a sit</figcaption>
                            </figure>
                        </a>
                        <a href="#" class="d-block tm-mb-40">
                            <figure>
                                <img src="img/img-05.jpg" alt="Image" class="mb-3 img-fluid">
                                <figcaption class="tm-color-primary">Integer quis lectus eget justo ullamcorper ullamcorper</figcaption>
                            </figure>
                        </a>
                        <a href="#" class="d-block tm-mb-40">
                            <figure>
                                <img src="img/img-06.jpg" alt="Image" class="mb-3 img-fluid">
                                <figcaption class="tm-color-primary">Nam lobortis nunc sed faucibus commodo</figcaption>
                            </figure>
                        </a>
                    </div>                    
                </aside>
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