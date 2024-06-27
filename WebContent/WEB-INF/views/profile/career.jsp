<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!--================================
        START BREADCRUMB AREA
    =================================-->
    <section class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb">
                        <ul>
                            <li>
                                <a href="index.html">Home</a>
                            </li>
                            <li class="active">
                                <a href="#">Content Blocks</a>
                            </li>
                        </ul>
                    </div>
                    <h1 class="page-title">Content Blocks</h1>
                </div>
                <!-- end /.col-md-12 -->
            </div>
            <!-- end /.row -->
        </div>
        <!-- end /.container -->
    </section>
    <!--================================
        END BREADCRUMB AREA
    =================================-->

    <!--================================
            START SIGNUP AREA
    =================================-->
    <section class="section--padding">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="feature_title">
                        <h3>Content Block 1</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="content_block1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6">
                        <div class="content_area">
                            <h1 class="content_area--title">About
                                <span class="highlight">MartPlace</span>
                            </h1>
                            <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra justo ut sceler isque the mattis,
                                leo quam aliquet congue this there placerat mi id nisi they interdum mollis. Praesent pharetra
                                justo ut sceleris que the mattis, leo quam aliquet. Nunc placer atmi id nisi interdum mollis
                                quam. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor
                                invidunt sanctus est Lorem ipsum dolor sit amet consetetur sadipscing.</p>
                        </div>
                    </div>
                    <!-- end /.col-md-5 -->
                </div>
                <!-- end /.row -->
            </div>
            <!-- end /.container -->

            <div class="content_image bgimage">
                <div class="bg_image_holder">
                    <img src="<c:url value='/assest/template/images/ab1.jpg'/> " alt="">
                </div>
            </div>
        </div>
        <!-- end /.about -->

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="feature_title">
                        <h3>Content Block 2</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="content_block2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6 offset-md-6 offset-lg-7">
                        <div class="content_area2">
                            <h1 class="content_area2--title">MartPlace
                                <span class="highlight">Mission</span>
                            </h1>
                            <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra justo ut sceler isque the mattis,
                                leo quam aliquet congue this there placerat mi id nisi they interdum mollis. Praesent pharetra
                                justo ut sceleris que the mattis, leo quam aliquet. Nunc placer atmi id nisi interdum mollis
                                quam. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor
                                invidunt sanctus est Lorem ipsum dolor sit amet consetetur sadipscing.</p>
                        </div>
                    </div>
                    <!-- end /.col-md-5 -->
                </div>
                <!-- end /.row -->
            </div>
            <!-- end /.container -->

            <div class="content_image2 bgimage">
                <div class="bg_image_holder">
                    <img src="<c:url value='/assest/template/images/ab2.jpg'/> " alt="">
                </div>
            </div>
        </div>
        <!-- end /.mission-->

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="feature_title">
                        <h3>Content Block 3</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="content_block3">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6 v_middle">
                        <div class="area_image">
                            <img src="<c:url value='/assest/template/images/1.png'/> " alt="area images">
                        </div>
                    </div>
                    <!-- end /.col-md-12 -->

                    <div class="col-lg-5 col-md-6 offset-lg-2 v_middle">
                        <div class="area_content">
                            <h2>Create a Free Account</h2>
                            <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra justo ut sceler isque the mattis,
                                leo quam aliquet congue this there placerat mi id nisi interdum mollis. Praesent pharetra
                                justo ut scelerisque the mattis, leo quam aliquet. Nunc placer atmi id nisi interdum mollis
                                quam. </p>
                            <a href="#" class="btn btn--default btn--white btn--round">Register Now</a>
                        </div>
                    </div>
                    <!-- end /.col-md-12 -->
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="feature_title">
                        <h3>Content Block 4</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="content_block3 bgcolor">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6 v_middle">
                        <div class="area_content">
                            <h2>Upload Your Products</h2>
                            <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra justo ut sceler isque the mattis,
                                leo quam aliquet congue this there placerat mi id nisi interdum mollis. Praesent pharetra
                                justo ut scelerisque the mattis, leo quam aliquet. Nunc placer atmi id nisi interdum mollis
                                quam. </p>
                            <a href="#" class="btn btn--white btn--default btn--round">Register Now</a>
                        </div>
                    </div>
                    <!-- end /.col-md-12 -->

                    <div class="col-lg-5 col-md-6 v_middle offset-lg-2">
                        <div class="area_image">
                            <img src="<c:url value='/assest/template/images/2.png'/> " alt="area images">
                        </div>
                    </div>
                    <!-- end /.col-md-12 -->
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="feature_title">
                        <h3>Content Block 5</h3>
                    </div>
                </div>
            </div>
        </div>
        <div class="content_block5 section--padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-6 v_middle">
                        <div class="content_block5_content">
                            <h1>Find Out More About
                                <span class="highlighted">AazzTech</span>
                            </h1>
                            <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra justo ut sceler isque the mattis,
                                leo quam aliquet congue this there placerat mi id nisi they interdum mollis. Praesent phare
                                tra justo ut sceleris que the mattis, leo quam aliquet. Nunc placer atmi id nisi interdum
                                mollis quam. </p>

                            <a href="about.html" class="btn btn--default btn--round">About Us</a>
                        </div>
                    </div>
                    <!-- end /.col-md-5 -->

                    <div class="col-lg-6 col-md-6 offset-lg-1 v_middle">
                        <img src="<c:url value='/assest/template/images/knous.jpg'/> " alt="The Image is not available or broken">
                    </div>
                    <!-- end /.col-md-6 -->
                </div>
                <!-- end /.row -->
            </div>
            <!-- end /.container -->
        </div>
    </section>

    <!--================================
            END SIGNUP AREA
    =================================-->