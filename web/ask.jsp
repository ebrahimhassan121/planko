<%-- 
    Document   : ask
    Created on : Aug 9, 2017, 1:55:49 AM
    Author     : EHS
--%>
<%@page import="Model.Users_model"%>
<%@page import="beans.user_bean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Users_model users_model3 = new Users_model();
    String ID = (session.getAttribute("ID") != null) ? session.getAttribute("ID").toString() : "-1";
    user_bean user3 = users_model3.Select_userByID(ID);
    if (user3 == null) {
        user3 = new user_bean();
        //   user.setName("زائر");
    }


%>

<div class="ask-box" onclick="$('#ask').modal('show');">
    <div class="ask-box-head">
        <div class="account">
            <div class="account-img">
                <img src="<%=user3.getAvatar()%>" alt="account image">
            </div>
            <div class="account-name">
                <a href="my-account.html">
                    <h5><%=user3.getName()%></h5>
                </a>
            </div>
        </div>
    </div><!--End Ask-box-head-->
    <div class="ask-box-body" >
        <span  id="questions-add" class="" >
            اسأل ما تريد
        </span>
    </div><!--End Ask-box-body-->
</div><!--End Ask-box-->

<div class="modal fade ask" id="ask" tabindex="-1" role="dialog" aria-labelledby="ask">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form class="form" method="post" action="addQuestion" id="questions-form">
                <div class="modal-body">
                    <div class="account">
                        <div class="account-img">
                            <img src="<%=user3.getAvatar()%>" alt="account image">
                        </div>

                        <div class="account-name">
                            <a href="my-account.html">
                                <h5><%=user3.getName()%></h5>
                            </a>
                        </div>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="form-group" style="margin-bottom: 10px">
                        <input type="text" class="form-control" style="height: 35px" name="title" placeholder="*العنوان (اجباري)" required/>
                    </div><!--End Form-group-->
                    <div class="form-group">
                        <textarea class="form-control" name="details_text" placeholder="التفاصيل (اختياري)"></textarea>
                    </div><!--End Form-group-->
                </div><!--End modal-body-->
                <div class="modal-footer">
                    <input type="reset" hidden="true" id="reset" />
                    <button type="submit" class="custom-btn pull-right"> اسأل سؤال</button>
                    <button type="submit" class="custom-btn pull-left">تفاصيل اكثر</button>
                </div>
            </form><!--End Form-->
            <script>
                $('#questions-form').submit(function (e) {
                    e.preventDefault();
                     $.post('addQuestion', $('#questions-form').serialize()
                            , function (responseText) {
                                $('#ask .close').click();
                                $('#reset').click();
                                if (responseText === "done") {
                                    $("#all_QuestionContent").prepend($('<div id="question0_3"></div>').hide());
                                    $('#question0_3').load('all-questions.jsp?selection=ALL&&f=0&&t=3');
                                    $('#question0_3').show();
                                    //////////////////////////////////
                                    $("#all_solved").prepend($('<div id="solved0_3"></div>').hide());
                                    $('#solved0_3').load('all-questions.jsp?selection=Answerd&&f=0&&t=3');
                                    $('#solved0_3').show();
                                    /////////////////////////////
                                    $("#not_solved").prepend($('<div id="not-solved0_3"></div>').hide());
                                    $('#not-solved0_3').load('all-questions.jsp?selection=NotAnswerd&&f=0&&t=3');
                                    $('#not-solved0_3').show();
                                    ///////////////////////////////////////////////////////
                                    $("#translated-div").prepend($('<div id="translated0_3"></div>').hide());
                                    $('#translated0_3').load('all-questions.jsp?selection=translated&&f=0&&t=3');
                                    $('#translated0_3').show();
                                } else if (responseText === "login_required") {
                                    $("#ask .close").click();
                                    $("#login-dialog-link").click();
                                }
                            },
                            );
                });
            </script>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
