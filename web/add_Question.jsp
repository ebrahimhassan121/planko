<%-- 
    Document   : add_Question
    Created on : Jul 22, 2017, 9:53:05 PM
    Author     : AHMED 50070
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>

        <div class="add-question">
            <div class="add-question-head">
                <p class="custom-p">
                    هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها.
                </p>
            </div><!--End add-question-head-->
            <form class="form" method="" action="">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="أكتب عنوان السؤال">
                            <span class="help-text">
                                يرجى اختيار عنوان مناسب للسؤال حتي يتم الرد عليه بسهوله.
                            </span>
                        </div><!--EnD form-group-->
                    </div><!--End Col-md-6-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="أختر كلمات مفتاحية">
                            <span class="help-text">  
                                لرجاء اختيار كلمات مناسبة مثال : question , poll.
                            </span>
                        </div><!--EnD form-group-->
                    </div><!--End Col-md-6-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <select class="form-control">
                                <option disabled selected> اختار الفئة</option>
                                <option>  البرمجة</option>
                                <option> رياضة</option>
                                <option> تصميم</option>
                            </select>

                            <span class="help-text">  
                                لرجاء اختيار كلمات مناسبة مثال : question , poll.
                            </span>
                        </div><!--EnD form-group-->
                    </div><!--End Col-md-6-->
                    <div class="col-md-6">
                        <div class="form-group file-upload">
                            <input type="file" class="upload form-control">
                            <div class="chose-file ">
                                <p class="p">اختار ملف</p>
                            </div>
                            <div class="file-icon">
                                <i class="fa fa-plus-square"></i>
                            </div>
                            <span class="help-text"> 
                                الرجاء اختيار ملف
                            </span>
                        </div><!--EnD form-group-->
                    </div><!--End Col-md-6-->
                    <div class="col-md-6">
                        <div class="form-group">
                            <textarea class="form-control" placeholder="الفاصيل" rows="4"></textarea>
                            <span class="help-text"> 
                                اكتب وصفا جيدا وبالتفصيل .
                            </span>
                        </div><!--EnD form-group-->
                    </div><!--End Col-md-6-->
                    <div class="col-md-6">
                        <div class="form-group">
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
                        <button type="submit" class="custom-btn pull-right">
                            أضف سؤالى
                        </button>
                    </div><!--End Col-md-12-->
                </div><!--End Row-->
            </form><!--End Form-->
        </div><!--End Add-Question-->
    </body>
</html>
