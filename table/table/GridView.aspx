<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="table.GridView" %>

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
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-default panel-table">
                    <div class="panel-heading">
                        Default
                  <div class="tools"><span class="icon mdi mdi-download"></span><span class="icon mdi mdi-more-vert"></span></div>
                    </div>
                    <div class="panel-body">
                        <div id="table1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">

                            <div class="row be-datatable-body">
                                <div class="col-sm-12">
                                    <table id="table1" class="table table-striped table-hover table-fw-widget dataTable no-footer" role="grid" aria-describedby="table1_info">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="table1" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column ascending" style="width: 174px;">Email ID</th>
                                                <th class="sorting" tabindex="0" aria-controls="table1" rowspan="1" colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 225px;">Password</th>
                                                <th class="sorting" tabindex="0" aria-controls="table1" rowspan="1" colspan="1" aria-label="Platform(s): activate to sort column ascending" style="width: 204px;">Country</th>
                                                <th class="sorting" tabindex="0" aria-controls="table1" rowspan="1" colspan="1" aria-label="Engine version: activate to sort column ascending" style="width: 146px;">City</th>
                                                <th class="sorting_desc" tabindex="0" aria-controls="table1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 110px;" aria-sort="descending">Pan Card</th>
                                                
                                                <th class="sorting_desc" tabindex="0" aria-controls="table1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 110px;" aria-sort="descending">Aadhar Card</th>
                                                
                                                <th class="sorting_desc" tabindex="0" aria-controls="table1" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending" style="width: 110px;" aria-sort="descending">Edit</th>
                                            </tr>
                                        </thead>
                                        <tbody id="tabletbody">
                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
    </form>

    <script src="html/assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
    <script src="html/assets/lib/perfect-scrollbar/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
    <script src="html/assets/js/main.js" type="text/javascript"></script>
    <script src="html/assets/lib/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="html/assets/lib/datatables/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="html/assets/lib/datatables/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script src="html/assets/lib/datatables/plugins/buttons/js/dataTables.buttons.js" type="text/javascript"></script>
    <script src="html/assets/lib/datatables/plugins/buttons/js/buttons.html5.js" type="text/javascript"></script>
    <script src="html/assets/lib/datatables/plugins/buttons/js/buttons.flash.js" type="text/javascript"></script>
    <script src="html/assets/lib/datatables/plugins/buttons/js/buttons.print.js" type="text/javascript"></script>
    <script src="html/assets/lib/datatables/plugins/buttons/js/buttons.colVis.js" type="text/javascript"></script>
    <script src="html/assets/lib/datatables/plugins/buttons/js/buttons.bootstrap.js" type="text/javascript"></script>
    <script src="html/assets/js/app-tables-datatables.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //initialize the javascript
         
            App.init();
            App.dataTables();
        });

        BindControl();
        function BindControl() {
            $.ajax({
                url: "GridView.aspx/GetRecords",
                type: "POST",
                data: '',
                contentType: "application/json; charset=utf-8",
                dataType: 'json',
                processData: false,
                success: function (result) {
                    debugger
                    for (var i = 0; i < result["d"].length; i++) {
                        var temp = '<tr class=\"gradeX odd\" role=\"row\">\r\n <td class=\"\">Misc<\/td>\r\n  <td class=\"\">Dillo 0.8<\/td>\r\n  <td class=\"\">Embedded devices<\/td>\r\n  <td class=\"center\">-<\/td>\r\n  <td class=\"center sorting_1\">X<\/td>\r\n <\/tr>';
                        $('#tabletbody').append(temp);
                    }
                    
                    debuggers
                },
                error: function (err) {
                    alert(err.statusText)
                }
            });
        }
    </script>

</body>
</html>
