<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!--================================
        START AUTHOR AREA
    =================================-->
    <section class="author-profile-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12">
                    <aside class="sidebar sidebar_author">
                        <div class="author-card sidebar-card">
                            <div class="author-infos">
                                <div class="author_avatar">
                                    <img src="images/author-avatar.jpg" alt="Presenting the broken author avatar :D">
                                </div>

                                <div class="author">
                                    <h4>AazzTech</h4>
                                    <p>Signed Up: 08 April 2016</p>
                                </div>
                                <!-- end /.author -->

                                <div class="author-badges">
                                    <ul class="list-unstyled">
                                        <li>
                                            <span data-toggle="tooltip" data-placement="bottom" title="Diamnond Author">
                                                <img src="<c:url value='/assest/template/images/svg/author_rank_diamond.svg'/>" alt="" class="svg">
                                            </span>
                                        </li>
                                        <li>
                                            <span data-toggle="tooltip" data-placement="bottom" title="Has sold more than $10k">
                                                <img src="<c:url value='/assest/template/images/svg/author_level_3.svg'/> " alt="" class="svg">
                                            </span>
                                        </li>
                                        <li>
                                            <span data-toggle="tooltip" data-placement="bottom" title="Referred 10+ members">
                                                <img src="<c:url value='/assest/template/images/svg/affiliate_level_1.svg'/> " alt="" class="svg">
                                            </span>
                                        </li>
                                        <li>
                                            <span data-toggle="tooltip" data-placement="bottom" title="Has Collected 2+ Items">
                                                <img src="<c:url value='/assest/template/images/svg/collection_level_1.svg'/> " alt="" class="svg">
                                            </span>
                                        </li>
                                        <li>
                                            <span data-toggle="tooltip" data-placement="bottom" title="Exclusive Author">
                                                <img src="<c:url value='/assest/template/images/svg/exclusive_author.svg'/> " alt="" class="svg">
                                            </span>
                                        </li>
                                        <li>
                                            <span data-toggle="tooltip" data-placement="bottom" title="Weekly Featured Author">
                                                <img src="<c:url value='/assest/template/images/svg/featured_author.svg'/> " alt="" class="svg">
                                            </span>
                                        </li>
                                        <li>
                                            <span data-toggle="tooltip" data-placement="bottom" title="Member for 2 Year">
                                                <img src="<c:url value='/assest/template/images/svg/members_years.svg'/> " alt="" class="svg">
                                            </span>
                                        </li>
                                        <li>
                                            <span data-toggle="tooltip" data-placement="bottom" title="The seller is recommended by authority">
                                                <img src="<c:url value='/assest/template/images/svg/recommended.svg'/> " alt="" class="svg">
                                            </span>
                                        </li>
                                        <li>
                                            <span data-toggle="tooltip" data-placement="bottom" title="Won a contest">
                                                <img src="<c:url value='/assest/template/images/svg/contest_winner.svg'/> " alt="" class="svg">
                                            </span>
                                        </li>
                                        <li>
                                            <span data-toggle="tooltip" data-placement="bottom" title="Helped to resolve copyright issues">
                                                <img src="<c:url value='/assest/template/images/svg/copyright.svg'/>" alt="" class="svg">
                                            </span>
                                        </li>
                                    </ul>
                                </div>
                                <!-- end /.author-badges -->

                                <div class="social social--color--filled">
                                    <ul>
                                        <li>
                                            <a href="#">
                                                <span class="fa fa-facebook"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="fa fa-twitter"></span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <span class="fa fa-dribbble"></span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- end /.social -->

                                <div class="author-btn">
                                    <a href="#" class="btn btn--md btn--round">Follow</a>
                                </div>
                                <!-- end /.author-btn -->
                            </div>
                            <!-- end /.author-infos -->


                        </div>
                        <!-- end /.author-card -->

                        <div class="sidebar-card author-menu">
                            <ul>
                                <li>
                                    <a href="#" class="active">Profile</a>
                                </li>
                                <li>
                                    <a href="author-items.html">Author Items</a>
                                </li>
                                <li>
                                    <a href="author-reviews.html">Customer Reviews</a>
                                </li>
                                <li>
                                    <a href="author-followers.html">Followers (67)</a>
                                </li>
                                <li>
                                    <a href="author-following.html">Following (39)</a>
                                </li>
                            </ul>
                        </div>
                        <!-- end /.author-menu -->

                        <div class="sidebar-card freelance-status">
                            <div class="custom-radio">
                                <input type="radio" id="opt1" class="" name="filter_opt" checked>
                                <label for="opt1">
                                    <span class="circle"></span>Available for Freelance work</label>
                            </div>
                        </div>
                        <!-- end /.author-card -->

                        <div class="sidebar-card message-card">
                            <div class="card-title">
                                <h4>Product Information</h4>
                            </div>

                            <div class="message-form">
                                <form action="#">
                                    <div class="form-group">
                                        <textarea name="message" class="text_field" id="author-message" placeholder="Your message..."></textarea>
                                    </div>

                                    <div class="msg_submit">
                                        <button type="submit" class="btn btn--md btn--round">send message</button>
                                    </div>
                                </form>
                                <p> Please
                                    <a href="#">sign in</a> to contact this author.</p>
                            </div>
                            <!-- end /.message-form -->
                        </div>
                        <!-- end /.freelance-status -->
                    </aside>
                </div>
                <!-- end /.sidebar -->

                <div class="col-lg-8 col-md-12">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <div class="author-info mcolorbg4">
                                <p>Total Items</p>
                                <h3>4,369</h3>
                            </div>
                        </div>
                        <!-- end /.col-md-4 -->

                        <div class="col-md-4 col-sm-4">
                            <div class="author-info pcolorbg">
                                <p>Total sales</p>
                                <h3>36,957</h3>
                            </div>
                        </div>
                        <!-- end /.col-md-4 -->

                        <div class="col-md-4 col-sm-4">
                            <div class="author-info scolorbg">
                                <p>Total Ratings</p>
                                <div class="rating product--rating">
                                    <ul>
                                        <li>
                                            <span class="fa fa-star"></span>
                                        </li>
                                        <li>
                                            <span class="fa fa-star"></span>
                                        </li>
                                        <li>
                                            <span class="fa fa-star"></span>
                                        </li>
                                        <li>
                                            <span class="fa fa-star"></span>
                                        </li>
                                        <li>
                                            <span class="fa fa-star-half-o"></span>
                                        </li>
                                    </ul>
                                    <span class="rating__count">(26)</span>
                                </div>
                            </div>
                        </div>
                        <!-- end /.col-md-4 -->

                        <div class="col-md-12 col-sm-12">
                            <div class="author_module">
                                <img src="<c:url value='/assest/template/images/authcvr.jpg'/> " alt="author image">
                            </div>

                            <div class="author_module about_author">
                                <h2>About
                                    <span>AazzTech</span>
                                </h2>
                                <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque the mattisleo
                                    quam aliquet congue. Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo
                                    ut scelerisque the mattisleo quam aliquet congue. Nunc placerat mi id nisi interdum mollis.
                                    Prae sent pharetra, justo ut scelerisque the mattisleo quam aliquet congue.</p>
                                <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque the mattisleo
                                    quam aliquet congue. Nunc placerat mi id nisi interdum mollis. Praesent pharetra.</p>
                            </div>
                        </div>
                    </div>
                    <!-- end /.row -->

                    <div class="row">
                        <div class="col-md-12">
                            <div class="product-title-area">
                                <div class="product__title">
                                    <h2>Newest Products</h2>
                                </div>

                                <a href="#" class="btn btn--sm">See all Items</a>
                            </div>
                            <!-- end /.product-title-area -->
                        </div>
                        <!-- end /.col-md-12 -->

                        <!-- start .col-md-4 -->
                        <div class="col-lg-6 col-md-6">
                            <!-- start .single-product -->
                            <div class="product product--card">

                                <div class="product__thumbnail">
                                    <img src="<c:url value='/assest/template/images/p4.jpg'/> " alt="Product Image">
                                    <div class="prod_btn">
                                        <a href="single-product.html" class="transparent btn--sm btn--round">More Info</a>
                                        <a href="single-product.html" class="transparent btn--sm btn--round">Live Demo</a>
                                    </div>
                                    <!-- end /.prod_btn -->
                                </div>
                                <!-- end /.product__thumbnail -->

                                <div class="product-desc">
                                    <a href="#" class="product_title">
                                        <h4>Yannan Na nakka muka</h4>
                                    </a>
                                    <ul class="titlebtm">
                                        <li>
                                            <img class="auth-img" src="<c:url value='/assest/template/images/auth3.jpg'/> " alt="author image">
                                            <p>
                                                <a href="#">AazzTech</a>
                                            </p>
                                        </li>
                                        <li class="product_cat">
                                            <a href="#">
                                                <img src="<c:url value='/assest/template/images/cathtm.png'/> " alt="category image">Plugin</a>
                                        </li>
                                    </ul>

                                    <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque the
                                        mattis, leo quam aliquet congue.</p>
                                </div>
                                <!-- end /.product-desc -->

                                <div class="product-purchase">
                                    <div class="price_love">
                                        <span>$10</span>
                                        <p>
                                            <span class="lnr lnr-heart"></span> 48</p>
                                    </div>

                                    <div class="rating product--rating">
                                        <ul>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star-half-o"></span>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="sell">
                                        <p>
                                            <span class="lnr lnr-cart"></span>
                                            <span>50</span>
                                        </p>
                                    </div>
                                </div>
                                <!-- end /.product-purchase -->
                            </div>
                            <!-- end /.single-product -->
                        </div>
                        <!-- end /.col-md-4 -->

                        <!-- start .col-md-4 -->
                        <div class="col-lg-6 col-md-6">
                            <!-- start .single-product -->
                            <div class="product product--card">

                                <div class="product__thumbnail">
                                    <img src="<c:url value='/assest/template/images/p2.jpg'/> " alt="Product Image">
                                    <div class="prod_btn">
                                        <a href="single-product.html" class="transparent btn--sm btn--round">More Info</a>
                                        <a href="single-product.html" class="transparent btn--sm btn--round">Live Demo</a>
                                    </div>
                                    <!-- end /.prod_btn -->
                                </div>
                                <!-- end /.product__thumbnail -->

                                <div class="product-desc">
                                    <a href="#" class="product_title">
                                        <h4>Mccarther Coffee Shop</h4>
                                    </a>
                                    <ul class="titlebtm">
                                        <li>
                                            <img class="auth-img" src="<c:url value='/assest/template/images/auth2.jpg'/> " alt="author image">
                                            <p>
                                                <a href="#">AazzTech</a>
                                            </p>
                                        </li>
                                        <li class="product_cat">
                                            <a href="#">
                                                <img src="<c:url value='/assest/template/images/catword.png'/> " alt="category image">wordpress</a>
                                        </li>
                                    </ul>

                                    <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque the
                                        mattis, leo quam aliquet congue.</p>
                                </div>
                                <!-- end /.product-desc -->

                                <div class="product-purchase">
                                    <div class="price_love">
                                        <span>$10</span>
                                        <p>
                                            <span class="lnr lnr-heart"></span> 48</p>
                                    </div>

                                    <div class="rating product--rating">
                                        <ul>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star-half-o"></span>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="sell">
                                        <p>
                                            <span class="lnr lnr-cart"></span>
                                            <span>50</span>
                                        </p>
                                    </div>
                                </div>
                                <!-- end /.product-purchase -->
                            </div>
                            <!-- end /.single-product -->
                        </div>
                        <!-- end /.col-md-4 -->

                        <!-- start .col-md-4 -->
                        <div class="col-lg-6 col-md-6">
                            <!-- start .single-product -->
                            <div class="product product--card">

                                <div class="product__thumbnail">
                                    <img src="<c:url value='/assest/template/images/p2.jpg'/> " alt="Product Image">
                                    <div class="prod_btn">
                                        <a href="single-product.html" class="transparent btn--sm btn--round">More Info</a>
                                        <a href="single-product.html" class="transparent btn--sm btn--round">Live Demo</a>
                                    </div>
                                    <!-- end /.prod_btn -->
                                </div>
                                <!-- end /.product__thumbnail -->

                                <div class="product-desc">
                                    <a href="#" class="product_title">
                                        <h4>Mccarther Coffee Shop</h4>
                                    </a>
                                    <ul class="titlebtm">
                                        <li>
                                            <img class="auth-img" src="<c:url value='/assest/template/images/auth2.jpg'/> " alt="author image">
                                            <p>
                                                <a href="#">AazzTech</a>
                                            </p>
                                        </li>
                                        <li class="product_cat">
                                            <a href="#">
                                                <img src="<c:url value='/assest/template/images/catword.png'/> " alt="category image">wordpress</a>
                                        </li>
                                    </ul>

                                    <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque the
                                        mattis, leo quam aliquet congue.</p>
                                </div>
                                <!-- end /.product-desc -->

                                <div class="product-purchase">
                                    <div class="price_love">
                                        <span>$10</span>
                                        <p>
                                            <span class="lnr lnr-heart"></span> 48</p>
                                    </div>

                                    <div class="rating product--rating">
                                        <ul>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star-half-o"></span>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="sell">
                                        <p>
                                            <span class="lnr lnr-cart"></span>
                                            <span>50</span>
                                        </p>
                                    </div>
                                </div>
                                <!-- end /.product-purchase -->
                            </div>
                            <!-- end /.single-product -->
                        </div>
                        <!-- end /.col-md-4 -->

                        <!-- start .col-md-4 -->
                        <div class="col-lg-6 col-md-6">
                            <!-- start .single-product -->
                            <div class="product product--card">

                                <div class="product__thumbnail">
                                    <img src="<c:url value='/assest/template/images/p6.jpg'/> " alt="Product Image">
                                    <div class="prod_btn">
                                        <a href="single-product.html" class="transparent btn--sm btn--round">More Info</a>
                                        <a href="single-product.html" class="transparent btn--sm btn--round">Live Demo</a>
                                    </div>
                                    <!-- end /.prod_btn -->
                                </div>
                                <!-- end /.product__thumbnail -->

                                <div class="product-desc">
                                    <a href="#" class="product_title">
                                        <h4>The of the century</h4>
                                    </a>
                                    <ul class="titlebtm">
                                        <li>
                                            <img class="auth-img" src="<c:url value='/assest/template/images/auth.jpg'/> " alt="author image">
                                            <p>
                                                <a href="#">AazzTech</a>
                                            </p>
                                        </li>
                                        <li class="product_cat">
                                            <a href="#">
                                                <img src="<c:url value='/assest/template/images/catph.png'/> " alt="Category Image">PSD</a>
                                        </li>
                                    </ul>

                                    <p>Nunc placerat mi id nisi interdum mollis. Praesent pharetra, justo ut scelerisque the
                                        mattis, leo quam aliquet congue.</p>
                                </div>
                                <!-- end /.product-desc -->

                                <div class="product-purchase">
                                    <div class="price_love">
                                        <span>$10</span>
                                        <p>
                                            <span class="lnr lnr-heart"></span> 48</p>
                                    </div>

                                    <div class="rating product--rating">
                                        <ul>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star"></span>
                                            </li>
                                            <li>
                                                <span class="fa fa-star-half-o"></span>
                                            </li>
                                        </ul>
                                    </div>

                                    <div class="sell">
                                        <p>
                                            <span class="lnr lnr-cart"></span>
                                            <span>50</span>
                                        </p>
                                    </div>
                                </div>
                                <!-- end /.product-purchase -->
                            </div>
                            <!-- end /.single-product -->
                        </div>
                        <!-- end /.col-md-4 -->
                    </div>
                    <!-- end /.row -->
                </div>
                <!-- end /.col-md-8 -->

            </div>
            <!-- end /.row -->
        </div>
        <!-- end /.container -->
    </section>
    <!--================================
        END AUTHOR AREA
    =================================-->




