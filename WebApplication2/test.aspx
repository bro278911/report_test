<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WebApplication2.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form class="form-horizontal" id="into_fish_insert" method="post">
        <div class="form-group">
            <select id="test_select">
                <option selected disabled>請選擇報表</option>
                <option value="財務報表">財務報表</option>
                <option value="維護報表">維護報表</option>
            </select>
            <label for="exampleInputpwd_4" class="col-sm-3 control-label">選擇日期</label>
            <div class="col-sm-9">
                <div class="input-group">
                    <input type="date" name="startDate" id="startDate" />
                </div>
            </div>
        </div>
        <div class="form-group mb-0">
            <div class="col-sm-offset-3 col-sm-9">
                <button id="Confirm_date" type="button" value="button" class="btn btn-info ">確認日期</button>
            </div>
        </div>
    </form>
</body>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script>
        //Confirm_date
        $(document).ready(function () {
            $("#Confirm_date").click(function (e) {
                //console.log("測試")
                //alert($("#startDate").val())
                sendVaule();
            });
        });
        function sendVaule() {
            window.open("report_test.aspx/" + $("#test_select").val() +"/" + $("#startDate").val(), "_blank");
        }
    </script>
</html>
