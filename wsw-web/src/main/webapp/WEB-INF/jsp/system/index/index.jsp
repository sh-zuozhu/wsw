﻿<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="en">
<head>
	<base href="<%=basePath%>">
	<meta charset="UTF-8">
	<title>黑夜主权(Night)</title>
    
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no">
    <meta name="apple-mobile-app-capable" content="yes">
    <meta name="apple-mobile-app-status-bar-style" content="black">
   
    <meta name="description" content="一只叫做黑夜的阿宅，想成为家喻户晓的大侠">
    <meta name="keywords" content="二次元，宅属性，前端，编程，全栈，绘画，设计">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="cononico">
    <meta name="application-name" content="Cononico" >

    <link rel="stylesheet" type="text/css" href="myindex/css/main.css">
    <link rel="stylesheet" type="text/css" href="myindex/css/process.css">
    <link rel="shortcut icon"  type="image/x-icon" href="favicon.ico" />
    
    <script type="text/javascript">
        //设定rem值
        document.getElementsByTagName("html")[0].style.fontSize = document.documentElement.clientWidth/20 + 'px';
    </script>
</head>
<body>
	<header class="head">
        <div class="head_logo_div">
            <img class="logo_img" src="myindex/images/upload/head.jpg"></a>
        </div>
        <div class="head_nav_div">
             <nav class="head_nav">
                <ul id="nav_ul">
                    <li class="nav_li_on nav_ul_li">Home</li>
                    <li class="nav_ul_li">Skill</li>
                    <li class="nav_ul_li">Experience</li>
                    <li class="nav_ul_li">Hobby</li>
                    <li class="nav_ul_li">Contact</li>
                </ul>
            </nav>
        </div>
        <div class="clear"></div>
    </header>
    
    <ul class="float_btn" id="float_btn">
        <li class="btn_on"></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
    
    <div class="wrapBox" id="wrapBox">
        <div class="box">
            <img class="box_bg" src="myindex/images/upload/pic_1.jpg">
            <div class="box01_content">
                <div class="head_div">
                    <div class="cycle_item">
                        <a href="https://yoomeili.cn" class="github_a" id="github_a" target="_blank">
                            <span class="github_icon"></span>
                            <span class="github_text"><p class="item_name">GitHub</p></span>
                        </a>
                        <a href="http://blog.yoomeili.cn" class="weibo_a" id="weibo_a" target="_blank">
                            <span class="weibo_icon"></span>
                            <span class="weibo_text"><p class="item_name">微博</p> </span>
                        </a>
                        <a href="http://blog.yoomeili.cn" class="blog_a" id="blog_a" target="_blank">
                            <span class="blog_icon"></span>
                            <span class="blog_text"><p class="item_name"> 博客</p></span>
                        </a>

                        <div class="green_cycle">
                            <img class="green_cycle_img" src="myindex/images/icon/green_cycle.svg">
                            <div class="yellow_cycle">
                                <img class="yellow_cycle_img" src="myindex/images/icon/yellow_cycle.svg">
                                <div class="blue_cycle">
                                    <img class="blue_cycle_img" src="myindex/images/icon/blue_cycle.svg">
                                    <div class="head_img_div">
                                        <img class="head_img" src="myindex/images/upload/head.jpg">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <h1 class="title">黑夜</h1>
                <h2 class="title_h2">千里之行，始于足下</h2>
                <div id="box01_text">
                <p class="box01_p">.</p>
                <p class="box01_p">.</p>
                <p class="box01_p">.</p>
                </div>
            </div>
            <div class="arrow_div">
                <img class="arrow_img" src="myindex/images/icon/arrowhead.png">
            </div>
        </div>
        
        <div class="box">
            <img class="box_bg" src="myindex/images/upload/pic_2.jpg">
            
            <div class="box02_content box_content">
                <div id='bar_container' class="bar_container">
                    <div class='bar mint' data-percent='70' data-skill='HTML5+CSS3'></div>
                    <div class='bar red' data-percent='50' data-skill='JavaScript'></div>
                    <div class='bar lila' data-percent='50' data-skill='前端工程化'></div>
                    <div class='bar orange' data-percent='50' data-skill='Node.js'></div>
                    <div class='bar gray' data-percent='30' data-skill='Java || C++'></div>
                    <div class="bar blue" data-percent='50' data-skill='PS&AE&PR&AI'></div>
                    <div class="bar green" data-percent='60' data-skill='绘画'></div>
                </div>
                <div id="box02_text">
                    <h1>About Skill</h1>
                    <div class="overline"></div>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                    <p></p>
                </div>
                <div class="clear"></div>
            </div>
            
            <div class="arrow_div">
                <img class="arrow_img" src="myindex/images/icon/arrowhead.png">
            </div>
            
        </div>
        
        <div class="box">
            <img class="box_bg" src="myindex/images/upload/pic_3.jpg">
            
            <div class="box_content box03_content">
                <ul id="timeUl" class="timeUl">
                    <li>
                        <div>
                            <h1></h1>
                            <p></p>
                            <p></p>
                            <p></p>
                            <p><p>
                            <p></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <h1></h1>
                            <p></p>
                            <p></p>
                            <p></p>
                           <p></p>
                        </div>
                    </li>
                    <li>
                       <div>
                            <h1></h1>
                            <p></p>
                            <p></p>
                            
                            <p></p>
                        </div>
                    </li>
                    <li>
                       <div>
                            <h1>Future</h1>
                            
                            <p>...</p>
                        </div>
                    </li>
                </ul>
                 <div class="left_div" id="left_div">
                     <img class="left_arrow" src="myindex/images/icon/arrowleft.png">
                 </div>
                 <div class="right_div" id="right_div">
                      <img class="right_arrow" src="myindex/images/icon/arrowright.png">
                 </div>
            </div>
            
             <div class="arrow_div">
                <img class="arrow_img" src="myindex/images/icon/arrowhead.png">
            </div>
        </div>
        
        
        <div class="box">
            
            <img class="box_bg" src="myindex/images/upload/pic_4.jpg">
            <div class="box_content box04_content">
                <h1 class="box04_title">Something Of Hobby</h1>
                <ul class="hobby_content">
                    <li class="hobby_01">
                        <div class="hobby_img_div">
                            <div class="spinner spinner_01"></div>
                            <div class="hobby_img">
                                <img src="myindex/images/upload/kapok.jpg">
                            </div>
                            <div class="hobby_img_info">
                                <h1>绘画</h1>
                                <h2>手绘&CG</h2>
                            </div>
                        </div>
                        <div class="hobby_text_div">
                            <div class="hobby_img_info_mob">
                                <h1>绘画/<a>手绘&CG</a></h1>
                            </div>
                            <p class="about_p">
                                对于绘画的热爱一部分来自于对ACG的热爱,小学时就开始拿着笔头被要烂的铅笔瞎画,
                                可惜父母和我都没发现这是个值得培养的爱好,以至于现在发展为一个手残.
                            </p>
                            <p>
                                比较擅长铅笔手绘动漫人物,SAI动漫人物的绘制(我是手残，上色渣渣).喜欢的画师是樋上至.
                                </a>
                            </p>
                        </div>
                    </li>
                    <li class="hobby_02">
                        <div class="hobby_img_div">
                            <div class="spinner spinner_02"></div>
                            <div class="hobby_img">
                                <img src="myindex/images/upload/acg.png">
                            </div>
                            <div class="hobby_img_info">
                                <h1>ACG</h1>
                                <h2>动漫&视频&lol</h2>
                            </div>
                        </div>
                        <div class="hobby_text_div">
                            <div class="hobby_img_info_mob">
                                <h1>ACG/<a>动漫&视频&lol</a></h1>
                            </div>
                            <p class="about_p">
                                入宅作《犬夜叉》,看完《Angle Beats!》深陷泥潭,最喜欢K社的作品(包括Galgame),
                                崇拜麻枝准,喜欢的歌手是ClariS.是个典型的萝莉控重度患者.
                            </p>
                            <p>
                                动漫对我而言是和文学一样的文化,最具感染力的抒情方式,将来希望自己工作在二次元的领域.
                            </p>
                        </div>
                    </li>
                    <li class="hobby_03">
                        <div class="hobby_img_div">
                            <div class="spinner spinner_03"></div>
                            <div class="hobby_img">
                                <img src="myindex/images/upload/reading.jpg">
                            </div>
                            <div class="hobby_img_info">
                                <h1>文学</h1>
                                <h2>历史&写作</h2>
                            </div>
                        </div>
                        <div class="hobby_text_div">
                            <div class="hobby_img_info_mob">
                                <h1>文学/<a>历史&写作</a></h1>
                            </div>
                            <p class="about_p">
                                和大多数人一样曾经也在可当上捧着一本小说看,以前喜欢小四韩寒马尔克斯村上春树,现在的兴趣
                                转移到历史上去了,屌丝只有多读书才能提高自己的内涵.
                            </p>
                            <p>
                                此外也会写点东西,就是毅力不够，仍需磨砺.
                            </p>
                        </div>
                    </li>
                    <div class="clear"></div>
                </ul>
            </div>
             <div class="arrow_div">
                <img class="arrow_img" src="myindex/images/icon/arrowhead.png">
            </div>
        </div>
        
        <foot id="foot" class="foot">
            <h1 class="foot_title">Contact With Me</h1>
            <div class="foot_info_main">
                <ul>
                    <li class="github_items">
                        <a href="http://blog.yoomeili.cn" target="_blank">GitHub</a>
                    </li>
                    <li class="google_items">
                        <a href="http://blog.yoomeili.cn" target="_blank">Google+</a>
                    
                    </li>
                    <li class="twitter_items">
                        <a href="http://blog.yoomeili.cn" target="_blank">Twitter</a>
                    
                    </li>
                    <li class="facebook_items">
                        <a href="http://blog.yoomeili.cn" target="_blank">FaceBook</a>
                    
                    </li>
                    <li class="weibo_items">
                        <a href="http://blog.yoomeili.cn" target="_blank">微博</a>
                    
                    </li>
                    <li class="zhihu_items">
                        <a href="http://blog.yoomeili.cn" target="_blank">知乎</a>
                    
                     </li>
                     <li class="blog_items">
                        <a href="http://blog.yoomeili.cn" target="_blank">博客</a>
                    
                     </li>
                     <li class="email_items">
                        <a href="mailto:min@coolecho.net" target="_blank">邮箱</a>
                    </li>
                    <div class="clear"></div>
                </ul>
                <div class="qrcode_div">
                    <span class="weixin">
                        <a class="weixin_icon"></a>
                        <img class="weixin_img" src="myindex/images/upload/weixin_qr.png">
                    </span>
                    <span class="dingding">
                        <a class="dingding_icon"></a>
                        <img class="dingding_img" src="myindex/images/upload/dingding_qr.png">
                    </span>
                    <span class="qq">
                        <a class="qq_icon"></a>
                        <img class="qq_img" src="myindex/images/upload/qq_qr.jpg">
                    </span>
                </div>
            </div>
            <div class="foot_power">
                <h3>©2016 Pwoerd 
                    <a href="http://yoomeili.cn" title="Night" target="_blank"> Night's</a>
                    <a href="https://blog.yoomeili.cn" title="IceEnd">黑夜主权</a>
                    <a href="http://www.miitbeian.gov.cn/" title="beian" target="_blank">浙ICP备14039906号-1</a>
                </h3>
            </div>
        </foot>
    </div>
    <script type="text/javascript" src="myindex/js/main.js"></script>
</body>
    
</html>

 