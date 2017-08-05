<%-- 
    Document   : all-questions
    Created on : Aug 2, 2017, 9:47:09 PM
    Author     : EHS
--%>

<%@page import="Model.Favourite_model"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.question_bean"%>
<%@page import="Model.Users_model"%>
<%@page import="beans.user_bean"%>
<%@page import="Model.Questions_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    Questions_model questions_model = new Questions_model();
    user_bean owner;
    Users_model users_model = new Users_model();
    ArrayList<question_bean> AllQuestion = questions_model.selectQuestions("ALL",0,3);
    for (int i = 0; i < AllQuestion.size(); i++) {
        owner = users_model.Select_userByID(AllQuestion.get(i).getOwnerID());

        
%>
<div class="question solved">
    <div class="question-head">
        <a class="question-name title title-md" href="question/<%=AllQuestion.get(i).getQuestionID()+"/"+AllQuestion.get(i).getQuestionTitle().replaceAll("\\s+","-")%>">
            <%=AllQuestion.get(i).getQuestionTitle()%>
        </a>
        <a href="Categories.jsp" class="category-question">
            <i class="fa fa-align-center"></i>
            <%=AllQuestion.get(i).getQuestionCategory()%>
        </a>
        <div class="question-author">
            <div class="question-author-img">
                <img src="<%=owner.getAvatar()%>">
            </div>
            <div class="question-author-cont">
                <h4 class="author-name">
                    <%=owner.getName()%>
                </h4>
                <span class="time">
                    <%=AllQuestion.get(i).getDateInArabic()%>
                </span>
                <span class="type ask">
                    <i class="fa fa-question"></i>
                    سؤال
                </span>
                <span class="type survay">
                    <i class="fa fa-bar-chart"></i>
                    استطلاع رأى
                </span>
            </div><!--End question-author-cont-->
        </div><!--End question-author-->
    </div><!--End question-head-->
    <div class="question-content">
        <div>
            <p class="custom-p">
                <%=AllQuestion.get(i).getQuestion_text()%>
            </p>
            <% if (AllQuestion.get(i).getQuestion_image() != null) {%>
            <img src="<%=AllQuestion.get(i).getQuestion_image()%>">
            <% }%>
        </div>
        <div>
            <% if (AllQuestion.get(i).getCommentsCount().equals("0")) {
            %>
            <div class="foot-info wait">
                <i class="fa fa-clock-o"></i>
                بإنتظار الحل
            </div>
            <% }%>
            <div class="foot-info">
                <span class="info">
                    <i class="fa fa-comments"></i>
                    <%=AllQuestion.get(i).getCommentsCount()%> مناقشة
                </span>
            </div>
            <div class="foot-info">
                <button class="vote">
                    <i class="fa fa-thumbs-o-up"></i>
                    <%=AllQuestion.get(i).getLikesCount()%> صوت
                </button>
            </div>
        </div>
    </div><!--End question-Content-->
    <div class="question-foot">
        <a class="custom-btn pull-right" href="question/<%=AllQuestion.get(i).getQuestionID()+"/"+AllQuestion.get(i).getQuestionTitle().replaceAll("\\s+","-")%>">
            أكمل القراءة
        </a>
         <div class="share-box">
                                                <%
                                                    String classFav = "";
                                                    Model.Favourite_model favourite_model = new Favourite_model();
                                                    String UserID = (session.getAttribute("ID") != null) ? session.getAttribute("ID").toString() : "";
                                                    if (favourite_model.select_favouriteByQuestionIDANDUSERID(AllQuestion.get(i).getQuestionID(), UserID)) {
                                                        classFav = "added-to-wishlist";
                                                    }
                                                %>
                                                <span class="btn-wishlist <%=classFav%>" id="favourite"title="إضافة اللى المفضلة" onclick="addFav();">
                                                    <i class="fa fa-heart" id="heart"></i>
                                                </span>
                                                <script>
                                                       function addLIke() {
                                                         $.post('addLike', {questionid: "<%=AllQuestion.get(i).getQuestionID()%>"
                                                        }, function (responseText) {
                                                            console.log(responseText);
                                                            if (responseText === "fav-unfav") {
                                                                location.reload();
                                                            } else if (responseText === "login_required") {
                                                                $("#login-dialog-link").click();
                                                            }
                                                        });
                                                    }
                                                    function addFav() {
                                                         $.post('addFavourite', {questionid: "<%=AllQuestion.get(i).getQuestionID()%>"
                                                        }, function (responseText) {
                                                            console.log(responseText);
                                                            if (responseText === "fav-unfav") {
                                                                //$('#favourite').toggleClass("added-to-wishlist");
                                                            } else if (responseText === "login_required") {
                                                                $("#login-dialog-link").click();
                                                            }
                                                        });
                                                    }
                                                    function copyStringToClipboard(string) {
                                                        function handler(event) {
                                                            event.clipboardData.setData('text/plain', string);
                                                            event.preventDefault();
                                                            document.removeEventListener('copy', handler, true);
                                                        }

                                                        document.addEventListener('copy', handler, true);
                                                        document.execCommand('copy');
                                                    }
                                                </script>
                                                <%
                                                    String QuestionURL="http://localhost:8080/planko/question/"+AllQuestion.get(i).getQuestionID()+"/"+AllQuestion.get(i).getQuestionTitle().replaceAll("\\s+", "-");
                                                %>
                                                <span class="icon-share" title="مشاركة" onclick="copyStringToClipboard('<%=QuestionURL%>')">
                                                    <i class="fa fa-mail-reply"></i>
                                                </span>
                                                <ul class="social">
                                                    <li>
                                                        
                                                        <a href="http://www.facebook.com/share.php?u=<%=QuestionURL%>/&title==Planko
                                                           " target="_blank" class="facebook">
                                                            <i class="fa fa-facebook"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="http://twitter.com/home?status=<%=QuestionURL%>
                                                           " target="_blank" class="twitter">
                                                            <i class="fa fa-twitter"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="http://www.linkedin.com/shareArticle?mini=true&url=<%=QuestionURL%>&title=<%=AllQuestion.get(i).getQuestionTitle()%>&source=[SOURCE/DOMAIN]
                                                           " target="_blank" class="linkedin">
                                                            <i class="fa fa-linkedin"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div><!--End question-share-->
    </div>
    <!--End question-foot-->
</div><!--End question-->
<%}%>

