<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mainpage.aspx.cs" Inherits="table.Mainpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="shortcut icon" href="assets/img/logo-fav.png">
    <title>Beagle</title>
    <link rel="stylesheet" type="text/css" href="html/assets/lib/perfect-scrollbar/css/perfect-scrollbar.min.css" />
    <link rel="stylesheet" type="text/css" href="html/assets/lib/material-design-icons/css/material-design-iconic-font.min.css" />
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="html/assets/lib/jquery.vectormap/jquery-jvectormap-1.2.2.css" />
    <link rel="stylesheet" type="text/css" href="html/assets/lib/jqvmap/jqvmap.min.css" />
    <link rel="stylesheet" type="text/css" href="html/assets/lib/datetimepicker/css/bootstrap-datetimepicker.min.css" />
    <link rel="stylesheet" href="html/assets/css/style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="col-sm-6">
            <div class="panel panel-default panel-border-color panel-border-color-primary">
                <div class="panel-heading panel-heading-divider">Basic Form<span class="panel-subtitle">This is the default bootstrap form layout</span></div>
                <div class="panel-body">

                    <div id="DivEmailID" class="form-group xs-pt-10 ">
                        <label>Email address</label>
                        <input type="text" id="EmailID" placeholder="Enter email" class="form-control form-group " />
                    </div>

                    <div id="DivPasswordId"  class="form-group">
                        <label>Password</label>
                        <input type="password" id="PasswordId" placeholder="Password" class="form-control" />
                    </div>
                    <div class="form-group">
                        <select class="form-control" tabindex="-1" aria-hidden="true">
                            <optgroup label="Alaskan/Hawaiian Time Zone">
                                <option value="AK">Alaska</option>
                                <option value="HI">Hawaii</option>
                            </optgroup>
                            <optgroup label="Pacific Time Zone">
                                <option value="CA">California</option>
                                <option value="NV">Nevada</option>
                                <option value="OR">Oregon</option>
                                <option value="WA">Washington</option>
                            </optgroup>
                            <optgroup label="Mountain Time Zone">
                                <option value="AZ">Arizona</option>
                                <option value="CO">Colorado</option>
                                <option value="ID">Idaho</option>
                                <option value="MT">Montana</option>
                                <option value="NE">Nebraska</option>
                                <option value="NM">New Mexico</option>
                                <option value="ND">North Dakota</option>
                                <option value="UT">Utah</option>
                                <option value="WY">Wyoming</option>
                            </optgroup>
                            <optgroup label="Central Time Zone">
                                <option value="AL">Alabama</option>
                                <option value="AR">Arkansas</option>
                                <option value="IL">Illinois</option>
                                <option value="IA">Iowa</option>
                                <option value="KS">Kansas</option>
                                <option value="KY">Kentucky</option>
                                <option value="LA">Louisiana</option>
                                <option value="MN">Minnesota</option>
                                <option value="MS">Mississippi</option>
                                <option value="MO">Missouri</option>
                                <option value="OK">Oklahoma</option>
                                <option value="SD">South Dakota</option>
                                <option value="TX">Texas</option>
                                <option value="TN">Tennessee</option>
                                <option value="WI">Wisconsin</option>
                            </optgroup>
                            <optgroup label="Eastern Time Zone">
                                <option value="CT">Connecticut</option>
                                <option value="DE">Delaware</option>
                                <option value="FL">Florida</option>
                                <option value="GA">Georgia</option>
                                <option value="IN">Indiana</option>
                                <option value="ME">Maine</option>
                                <option value="MD">Maryland</option>
                                <option value="MA">Massachusetts</option>
                                <option value="MI">Michigan</option>
                                <option value="NH">New Hampshire</option>
                                <option value="NJ">New Jersey</option>
                                <option value="NY">New York</option>
                                <option value="NC">North Carolina</option>
                                <option value="OH">Ohio</option>
                                <option value="PA">Pennsylvania</option>
                                <option value="RI">Rhode Island</option>
                                <option value="SC">South Carolina</option>
                                <option value="VT">Vermont</option>
                                <option value="VA">Virginia</option>
                                <option value="WV">West Virginia</option>
                            </optgroup>
                        </select>
                    </div>
                    <div class="form-group">
                        <select class="form-control" tabindex="-1" aria-hidden="true">
                            <optgroup label="Alaskan/Hawaiian Time Zone">
                                <option value="AK">Alaska</option>
                                <option value="HI">Hawaii</option>
                            </optgroup>
                            <optgroup label="Pacific Time Zone">
                                <option value="CA">California</option>
                                <option value="NV">Nevada</option>
                                <option value="OR">Oregon</option>
                                <option value="WA">Washington</option>
                            </optgroup>
                            <optgroup label="Mountain Time Zone">
                                <option value="AZ">Arizona</option>
                                <option value="CO">Colorado</option>
                                <option value="ID">Idaho</option>
                                <option value="MT">Montana</option>
                                <option value="NE">Nebraska</option>
                                <option value="NM">New Mexico</option>
                                <option value="ND">North Dakota</option>
                                <option value="UT">Utah</option>
                                <option value="WY">Wyoming</option>
                            </optgroup>
                            <optgroup label="Central Time Zone">
                                <option value="AL">Alabama</option>
                                <option value="AR">Arkansas</option>
                                <option value="IL">Illinois</option>
                                <option value="IA">Iowa</option>
                                <option value="KS">Kansas</option>
                                <option value="KY">Kentucky</option>
                                <option value="LA">Louisiana</option>
                                <option value="MN">Minnesota</option>
                                <option value="MS">Mississippi</option>
                                <option value="MO">Missouri</option>
                                <option value="OK">Oklahoma</option>
                                <option value="SD">South Dakota</option>
                                <option value="TX">Texas</option>
                                <option value="TN">Tennessee</option>
                                <option value="WI">Wisconsin</option>
                            </optgroup>
                            <optgroup label="Eastern Time Zone">
                                <option value="CT">Connecticut</option>
                                <option value="DE">Delaware</option>
                                <option value="FL">Florida</option>
                                <option value="GA">Georgia</option>
                                <option value="IN">Indiana</option>
                                <option value="ME">Maine</option>
                                <option value="MD">Maryland</option>
                                <option value="MA">Massachusetts</option>
                                <option value="MI">Michigan</option>
                                <option value="NH">New Hampshire</option>
                                <option value="NJ">New Jersey</option>
                                <option value="NY">New York</option>
                                <option value="NC">North Carolina</option>
                                <option value="OH">Ohio</option>
                                <option value="PA">Pennsylvania</option>
                                <option value="RI">Rhode Island</option>
                                <option value="SC">South Carolina</option>
                                <option value="VT">Vermont</option>
                                <option value="VA">Virginia</option>
                                <option value="WV">West Virginia</option>
                            </optgroup>
                        </select>
                    </div>

                     <div id="DivPanCard" class="form-group xs-pt-10">
                        <label>File Upload single </label>
                         <input type="file" runat="server"  id="PanCard" placeholder="Upload file"  class="form-control MultiFile-wrap" />
                          <label id="lblPanCard">

                          </label>
                    </div>
                     <div id="DivAadharCard" class="form-group xs-pt-10 ">
                        <label>File Upload Second</label>
                         <input type="file" runat="server" id="AadharCard" placeholder="Upload file" class="form-control MultiFile-wrap" />
                          <label id="lblAadharCard"></label>
                    </div>

                    <div class="row xs-pt-15">
                        <div class="col-xs-6">
                            <div class="be-checkbox">
                                <input id="check1" type="checkbox" />
                                <label for="check1">Remember me</label>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <p class="text-right">
                                <button type="submit" onclick="return ValidateForm()" class="btn btn-space btn-primary">Submit</button>
                                <button class="btn btn-space btn-default">Cancel</button>
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
    <script src="html/assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="html/assets/lib/perfect-scrollbar/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
    <script src="html/assets/js/main.js" type="text/javascript"></script>
    <script src="html/assets/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="html/assets/lib/jquery-flot/jquery.flot.js" type="text/javascript"></script>
    <script src="html/assets/lib/jquery-flot/jquery.flot.pie.js" type="text/javascript"></script>
    <script src="html/assets/lib/jquery-flot/jquery.flot.resize.js" type="text/javascript"></script>
    <script src="html/assets/lib/jquery-flot/plugins/jquery.flot.orderBars.js" type="text/javascript"></script>
    <script src="html/assets/lib/jquery-flot/plugins/curvedLines.js" type="text/javascript"></script>
    <script src="html/assets/lib/jquery.sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <script src="html/assets/lib/countup/countUp.min.js" type="text/javascript"></script>
    <script src="html/assets/lib/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="html/assets/lib/jqvmap/jquery.vmap.min.js" type="text/javascript"></script>
    <script src="html/assets/lib/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
    <script src="html/assets/js/app-dashboard.js" type="text/javascript"></script>
    <script type="text/javascript">


        function openFile(file) {
            var extension = file.substr((file.lastIndexOf('.') + 1));
            var isPngOrjpg = false;
            switch (extension) {
                case 'jpg':
                case 'png':
                    isPngOrjpg = true;
                    // There's was a typo in the example where
                    break;                         // the alert ended with pdf instead of gif.
                    //case 'zip':
                    //case 'rar':
                    //    alert('was zip rar');
                    //    break;
                    //case 'pdf':
                    //    alert('was pdf');
                    //    break;
                default:

                    isPngOrjpg = false;
            }
            return isPngOrjpg;
        };
        function validate() {
            

            var validate = false;
            $('.MultiFile-wrap').each(function () {

                var file = $("input:file");
                if (file.length >= 1) {
                    for (var i = 0; i < file.length; i++) {
                        var x = $("#" + file[i].id);
                        
                        if (x.val() != undefined && x.val().trim() != null && x.val() != '') {
                            var IsPngOrjpg = openFile(x.val());
                          
                            if (IsPngOrjpg) {
                                if (x != undefined) {
                                    if (x[0].files != undefined) {
                                        if (x[0].files[0].size > 2097152) {
                                            $('#Div' + file[i].id).text('Please select file size less than 2 MB :  ' + x[0].files[0].name);
                                            validate = false;
                                            break

                                        }
                                        else
                                            validate = true;
                                    }
                                }
                            }
                            else {

                                $('#lbl' + file[i].id).text('Please upload Validate message :  ' + x[0].files[0].name); $('#Div' + file[i].id).addClass('has-error');
                                x[0].files[0].name = '';
                                break;


                            }
                        }
                        else
                        {
                            debugger;
                            $('#lbl' + file[i].id).text('Please upload file:  '); $('#Div' + file[i].id).addClass('has-error');
                            validate = false;


                        }
                    }
                }
            });
            return validate;
        }

        var EmailId = true;
        var Password = true;
        function ValidateTextBox()
        {
            if($('#EmailID').val().trim()=='')
            {
                EmailId = false;
                $('#DivEmailID').addClass("has-error");

            }
            else
            {
                EmailId = true;
                $('#DivEmailID').removeClass("has-error");

            }
            return EmailId;

        }
        function ValidatePasswordTextBox() {
            if ($('#PasswordId').val().trim() == '') {
                Password = false;
                $('#DivPasswordId').addClass("has-error");

            }
            else
            {

                $('#DivPasswordId').removeClass("has-error");
                Password = true;

            }
            return Password;


        }

        function ValidateForm() {
            
           if( ValidateTextBox() == false)
               return EmailId;
           if (ValidatePasswordTextBox() == false)
               return Password;


            if (validate() == true) {
                var PanCard = $("#PanCard").get(0);
                uploadRecords(PanCard,false);

                var AadharCard = $("#AadharCard").get(0);
                uploadRecords(AadharCard,true);
            }
           else
            {
                return false;
            }

        };

        var data = new FormData();
        function uploadRecords(fileUpload,isSecondValue)
        {
            if (isSecondValue==false) {
                var files = fileUpload.files;

                for (var i = 0; i < files.length; i++) {
                    data.append(files[i].name, files[i]);
                }
                return;
            }
            else
            {
                var files = fileUpload.files;

                for (var i = 0; i < files.length; i++) {
                    data.append(files[i].name, files[i]);
                }
            }

            $.ajax({
                url: "Image.ashx?name=" + $('#EmailID').val().trim() + '&password=' + $('#PasswordId').val().trim(),
                type: "POST",
                data: data,
                contentType: false,
                processData: false,
                success: function (result) { alert(result); },
                error: function (err) {
                    alert(err.statusText)
                }
            });

        }


    </script>

</body>
</html>
