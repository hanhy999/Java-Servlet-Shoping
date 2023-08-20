<%-- 
    Document   : checkout
    Created on : Mar 25, 2022, 7:54:26 PM
    Author     : XuanQuy
--%>

<%@page import="DTO.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DTO.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Dawn - Checkout</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="shortcut icon" href="images/dawn.png" />

        <script src="https://kit.fontawesome.com/a36bda6cfe.js" crossorigin="anonymous"></script>
        <style>
            #style-1::-webkit-scrollbar {
                width: 6px;
                background-color: #F5F5F5;
            }
            #style-1::-webkit-scrollbar-thumb {
                background-color: #000000;
            }
            #style-1::-webkit-scrollbar-track {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
                background-color: #F5F5F5;
            }


        </style>
    </head>
    <body  id="style-1" class="goto-here">
        <div class="py-1 bg-black">
            <div class="container">
                <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
                    <div class="col-lg-12 d-block">
                        <div class="row d-flex">
                            <div class="col-md pr-4 d-flex topper align-items-center">
                                <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                                <span class="text">+ 0345 678 891</span>
                            </div>
                            <div class="col-md pr-4 d-flex topper align-items-center">
                                <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                                <span class="text">xuanquy@email.com</span>
                            </div>
                            <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                                <span class="text">3-5 Business days delivery &amp; Free Returns</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Dawn</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a style="font-size: 13px;" href="index.jsp" class="nav-link">Home</a></li>
                        <li class="nav-item dropdown active">
                            <a style="font-size: 13px;" class="nav-link dropdown-toggle" href="#" id="dropdown04"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/ShopController"> Shop</a>
                                <a class="dropdown-item" href="product-single.jsp">Single Product</a>
                                <a class="dropdown-item" href="cart.jsp">Cart</a>
                                <a class="dropdown-item" href="checkout.jsp">Checkout</a>
                            </div>
                        </li>
                        <li class="nav-item"><a href="about.jsp" style="font-size: 13px;" class="nav-link">About</a></li>
                        <li class="nav-item"><a href="blog.jsp" style="font-size: 13px;" class="nav-link">Blog</a></li>
                        <li class="nav-item"><a href="contact.jsp" style="font-size: 13px;" class="nav-link">Contact</a>
                        </li>
                        <li class="nav-item cta cta-colored"><a style="font-size: 13px;" href="cart.jsp"
                                                                class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>

                        <li class="nav-item"><a href="login.jsp" style="font-size: 13px;" class="nav-link"><i
                                    class="fa-solid fa-user"></i></a>
                        <li class="nav-item"><a href=""  style="font-size: 13px;" class="nav-link">Hi, ${name}  </a>


                        </li>

                        <form method="get" action="./LogoutController" class="nav-item"><button  
                                style="font-size: 13px;background: #ffffff;border: 1px solid #ffffff;cursor: pointer" 
                                class="nav-link"> Đăng xuất  </button>


                        </form>



                </div>



            </div>
        </nav>
        <!-- END nav -->

        <div class="hero-wrap hero-bread" style="background-image: url('images/bg_6.jpg');">
            <div class="container">
                <div class="row no-gutters slider-text align-items-center justify-content-center">
                    <div class="col-md-9 ftco-animate text-center">
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Checkout</span></p>
                        <h1 class="mb-0 bread">Checkout</h1>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section ftco-cart">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 ftco-animate">
                        <div class="cart-list">
                            <h4>Thông tin thanh toán</h4>
                            <table class="table">
                                <thead class="thead-primary">
                                    <tr class="text-center">
                                        <th>&nbsp;</th>

                                        <th>Product</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                    </tr>
                                    <%
                                        Cart cart = (Cart) session.getAttribute("cart");
                                        if (cart != null) {
                                            ArrayList<Item> items = cart.getCart();
                                            for (Item item : items) {
                                    %>

                                </thead>
                                <tbody>

                                    <tr class="text-center">
                                        <!--<td class="product-remove"><a href="#"><span class="ion-ios-close"></span></a></td>-->
                                        <td class="image-prod"><div class="img" style="background-image:url(<%= item.getImage()%>);"></div></td>
                                                                               <!--<td class="image-prod"> <img src="<%= item.getImage()%>" alt="alt"/> </td>-->

                                        <td class="product-name">
                                            <h3><%= item.getTitle()%></h3>
                                            <p>Far far away, behind the word mountains, far from the countries</p>
                                        </td>

                                        <td class="price"><fmt:formatNumber type="number" maxFractionDigits="2" value="<%= item.getPrice()%>" /> VNĐ</td>

                                        <td class="quantity">
                                            <div class="input-group mb-3">
                                                <input type="text" name="quantity" class="quantity form-control input-number" value="<%=item.getSoLuong()%>" min="1" max="100">
                                            </div>
                                        </td>

                                        <td class="total"><fmt:formatNumber type="number" maxFractionDigits="2" value="<%= item.getPrice() * item.getSoLuong() %>" /> VNĐ</td>

                                    </tr> 
                                    <% }%>
                                <p  style="margin-top: 50px" class="tongTien"><strong >Tổng tiền:  <fmt:formatNumber type="number" maxFractionDigits="2" value="<%= cart.getTongTien()%>" /> VNĐ<strong></p>
                                            <% }%> 

                                            </tbody>
                                            </table>
                                            </div>
                                            </div>
                                            </div>
                                            </section>

                                            <section class="ftco-section">
                                                <div class="container">
                                                    <div class="row justify-content-center">
                                                        <div class="col-xl-8 ftco-animate">

                                                            <form action="CheckoutController" method="post">
                                                                <h3 class="mb-4 billing-heading">Billing Details</h3>
                                                                <div class="row align-items-end">
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="firstname">Firt Name</label>
                                                                            <input name="customerName" type="text" class="form-control" placeholder="">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="lastname">Last Name</label>
                                                                            <input type="text" name="customerNameLast" class="form-control" placeholder="">
                                                                        </div>
                                                                    </div>
                                                                    <div class="w-100"></div>
                                                                    <div class="col-md-12">
                                                                        <div class="form-group">
                                                                            <label for="country">State / Country</label>
                                                                            <div class="select-wrap">
                                                                                <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                                                                <select name="" id="" class="form-control">
                                                                                    <option value="">Vietnamese</option>
                                                                                    <option value="">Japan</option>
                                                                                    <option value="">Australia</option>
                                                                                    <option value="">Swizer land</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="w-100"></div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="streetaddress">Street Address</label>
                                                                            <input type="text" name="addressShip" class="form-control" placeholder="House number and street name">
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="form-group">
                                                                            <label for="streetaddress">Phone Number</label>
                                                                            <input type="number" name="phone" class="form-control" placeholder="Phone Number">
                                                                        </div>
                                                                    </div>
                                                                    <div class="w-100"></div>

                                                                    <div class="w-100"></div>
                                                                    <div class="col-md-12">
                                                                        <div class="form-group mt-4">
                                                                            <div class="radio">
                                                                                <label class="mr-3"><input type="radio" name="optradio"> Create an Account? </label>
                                                                                <label><input type="radio" name="optradio"> Ship to different address</label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>



                                                                <div class="row mt-5 pt-3 d-flex">
                                                                    <div class="col-md-6 d-flex">
                                                                        <div class="cart-detail cart-total bg-light p-3 p-md-4">
                                                                            <h3 class="billing-heading mb-4">Cart Total</h3>
                                                                            <p class="d-flex">
                                                                                <span>Subtotal</span>
                                                                                <span>$20.60</span>
                                                                            </p>
                                                                            <p class="d-flex">
                                                                                <span>Delivery</span>
                                                                                <span>$0.00</span>
                                                                            </p>
                                                                            <p class="d-flex">
                                                                                <span>Discount</span>
                                                                                <span>$3.00</span>
                                                                            </p>
                                                                            <hr>
                                                                            <p class="d-flex total-price">
                                                                                <span>Total</span>
                                                                                <span>$17.60</span>
                                                                            </p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <div class="cart-detail bg-light p-3 p-md-4">
                                                                            <h3 class="billing-heading mb-4">Payment Method</h3>
                                                                            <div class="form-group">
                                                                                <div class="col-md-12">
                                                                                    <div class="radio">
                                                                                        <label><input type="radio" name="optradio" class="mr-2"> Direct Bank Tranfer</label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="col-md-12">
                                                                                    <div class="radio">
                                                                                        <label><input type="radio" name="optradio" class="mr-2"> Check Payment</label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="col-md-12">
                                                                                    <div class="radio">
                                                                                        <label><input type="radio" name="optradio" class="mr-2"> Paypal</label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="col-md-12">
                                                                                    <div class="checkbox">
                                                                                        <label><input type="checkbox" value="" class="mr-2"> I have read and accept the terms and conditions</label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <p><button type="submit" class="btn btn-primary py-3 px-4">Place an order</button></p>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </form>

                                                        </div> <!-- .col-md-8 -->
                                                    </div>
                                                </div>
                                            </section> <!-- .section -->


                                            <footer class="ftco-footer bg-light ftco-section">
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="mouse">
                                                            <a href="#" class="mouse-icon">
                                                                <div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-5">
                                                        <div class="col-md">
                                                            <div class="ftco-footer-widget mb-4">
                                                                <h2 class="ftco-heading-2">Winkel</h2>
                                                                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                                <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-md">
                                                            <div class="ftco-footer-widget mb-4 ml-md-5">
                                                                <h2 class="ftco-heading-2">Menu</h2>
                                                                <ul class="list-unstyled">
                                                                    <li><a href="#" class="py-2 d-block">Shop</a></li>
                                                                    <li><a href="#" class="py-2 d-block">About</a></li>
                                                                    <li><a href="#" class="py-2 d-block">Journal</a></li>
                                                                    <li><a href="#" class="py-2 d-block">Contact Us</a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="ftco-footer-widget mb-4">
                                                                <h2 class="ftco-heading-2">Help</h2>
                                                                <div class="d-flex">
                                                                    <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
                                                                        <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
                                                                        <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
                                                                        <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
                                                                        <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
                                                                    </ul>
                                                                    <ul class="list-unstyled">
                                                                        <li><a href="#" class="py-2 d-block">FAQs</a></li>
                                                                        <li><a href="#" class="py-2 d-block">Contact</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md">
                                                            <div class="ftco-footer-widget mb-4">
                                                                <h2 class="ftco-heading-2">Have a Questions?</h2>
                                                                <div class="block-23 mb-3">
                                                                    <ul>
                                                                        <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                                                                        <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                                                                        <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-12 text-center">

                                                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </footer>



                                            <!-- loader -->
                                            <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


                                            <script src="js/jquery.min.js"></script>
                                            <script src="js/jquery-migrate-3.0.1.min.js"></script>
                                            <script src="js/popper.min.js"></script>
                                            <script src="js/bootstrap.min.js"></script>
                                            <script src="js/jquery.easing.1.3.js"></script>
                                            <script src="js/jquery.waypoints.min.js"></script>
                                            <script src="js/jquery.stellar.min.js"></script>
                                            <script src="js/owl.carousel.min.js"></script>
                                            <script src="js/jquery.magnific-popup.min.js"></script>
                                            <script src="js/aos.js"></script>
                                            <script src="js/jquery.animateNumber.min.js"></script>
                                            <script src="js/bootstrap-datepicker.js"></script>
                                            <script src="js/scrollax.min.js"></script>
                                            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
                                            <script src="js/google-map.js"></script>
                                            <script src="js/main.js"></script>

                                            </body>
                                            </html>