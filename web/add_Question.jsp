<%-- 
    Document   : add_Question
    Created on : Jul 22, 2017, 9:53:05 PM
    Author     : AHMED 50070
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.Categories_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="add-question">
    <div class="add-question-head">
        <p class="custom-p">
            هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.
        </p>
    </div><!--End add-question-head-->
    <form class="form" id="add-question-details" method="post" action="" enctype="multipart/form-data">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <input type="text" name="title" id="title"class="form-control" placeholder="أكتب عنوان السؤال">
                    <span class="help-text">
                        يرجى اختيار عنوان مناسب للسؤال حتي يتم الرد عليه بسهوله.
                    </span>
                </div><!--EnD form-group-->
            </div><!--End Col-md-6-->
            <div class="col-md-6">
                <div class="form-group">
                    <input type="text" class="form-control" id="keywords" name="keywords" placeholder="أختر كلمات مفتاحية">
                    <span class="help-text">  
                        لرجاء اختيار كلمات مناسبة مثال : question , poll.
                    </span>
                </div><!--EnD form-group-->
            </div><!--End Col-md-6-->
            <div class="col-md-6">
                <div class="form-group">
                    <select class="form-control" id="categ">
                        <option disabled selected> اختار الفئة</option>
                        <%
                            Categories_model categories_model = new Categories_model();
                            ArrayList<String> arrCat = categories_model.Select_ALL_CategoriesNames();
                            for (int i = 0; i < arrCat.size(); i++) {
                        %>
                        <option value=" <%=arrCat.get(i)%>">  <%=arrCat.get(i)%></option>
                        <%}%>
                    </select>

                    <span class="help-text">  
                        لرجاء اختيار كلمات مناسبة مثال : question , poll.
                    </span>
                </div><!--EnD form-group-->
            </div><!--End Col-md-6-->
            <div class="col-md-6">
                <div class="form-group file-upload">
                    <input type="file" id="image" accept="image/*" class="upload form-control">
                    <div class="chose-file ">
                        <p class="p">اختار صورة</p>
                    </div>
                    <div class="file-icon">
                        <i class="fa fa-plus-square"></i>
                    </div>
                    <span class="help-text"> 
                        الرجاء اختيار صورة
                    </span>
                </div><!--EnD form-group-->
            </div><!--End Col-md-6-->
            <div class="col-md-12">
                <div class="form-group">
                    <textarea class="form-control" id="details_text"  placeholder="الفاصيل" rows="4"></textarea>
                    <span class="help-text"> 
                        اكتب وصفا جيدا وبالتفصيل .
                    </span>
                </div><!--EnD form-group-->
            </div><!--End Col-md-6-->
            <div class="col-md-6">
                <!--div class="form-group">
                    <label class="label">
                        <input type="checkbox">
                        هل هذا هو سؤال استطلاع؟
                    </label>
                    <span class="help-text"> 
                        أذا كنت تريده سؤال استطلاع اضغط هنا 
                    </span>
                </div><!--EnD form-group-->
            </div><!--End Col-md-6-->
            <div class="col-md-12">
                <button type="submit" id="add-question-submit" class="custom-btn pull-right">
                    أضف سؤالى
                </button>
            </div><!--End Col-md-12-->
        </div><!--End Row-->
    </form><!--End Form-->
</div><!--End Add-Question-->
<script>
    var inputFile;
//    function readURL(input) {
//
//        if (input.files && input.files[0]) {
//            var reader = new FileReader();
//            reader.onload = function (e) {
//              //  $('#profile-image').attr('src', e.target.result);
//            },
//            inputFile = input.files[0];
//            reader.readAsDataURL(input.files[0]);
//        }
//    }
//    $("#image").change(function () {
//            readURL(this);
//        });
    $('#add-question-details').submit(function (e) {
            e.preventDefault();
               var file_data = inputFile;   // Getting the properties of file from file field
            var form_data = new FormData();                  // Creating object of FormData class
            form_data.append("image",  $('input[type=file]')[0].files[0]);
            form_data.append("title",$('#title').val());
            form_data.append("details_text",$('#details_text').val());
            form_data.append("cat",$('#categ').val());
            form_data.append("keywords",$('#keywords').val());
            $.ajax({
            url: "addDetailedQuestion",
                    dataType: 'script',
                    cache: false,
                    contentType: false,
                    processData: false,
                    data: form_data, // Setting the data attribute of ajax with file_data
                    type: 'POST',
                    success: function (data, textStatus, jqXHR) {
                       
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log(jqXHR.responseText);
                    var m = (jqXHR.responseText);
                            if (m === "done") {
                            window.location.replace("Profile.jsp?mq");
                            //$('#my-questions-link').click();
                    }else if(m==="login_required"){
                        $('#login-dialog-link').click();
                    }
                    }
            });
        });
 
</script>