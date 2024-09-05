<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginform.aspx.cs" Inherits="WebApplication1.login.loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"/>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../assets/plugins/fontawesome-free/css/all.min.css"/>
  <!-- daterange picker -->
  <link rel="stylesheet" href="../asstes/plugins/daterangepicker/daterangepicker.css"/>
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="../assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css"/>
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="../assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css"/>
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="../assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css"/>
  <!-- Select2 -->
  <link rel="stylesheet" href="../assets/plugins/select2/css/select2.min.css"/>
  <link rel="stylesheet" href="../assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css"/>
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="../assets/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css"/>
  <!-- BS Stepper -->
  <link rel="stylesheet" href="../assets/plugins/bs-stepper/css/bs-stepper.min.css"/>
  <!-- dropzonejs -->
  <link rel="stylesheet" href="../assets/plugins/dropzone/min/dropzone.min.css"/>
  <!-- Theme style -->
  <link rel="stylesheet" href="../assets/dist/css/adminlte.min.css"/>
</head>
<body>
    <form runat="server">
    <div class="row">
          <div class="col-md-12">
            <div class="card card-default">
              <div class="card-header">
                <h2 class="card-title">Welcome to Shewa Robbit Correctional Fasility Official Website!</h2>
              </div>
              <div class="card-body p-0">
                <div class="bs-stepper">
                  <div class="bs-stepper-header" role="tablist">
                    <!-- your steps here -->
                    <div class="step" data-target="#logins-part">
                      <button type="button" class="step-trigger" role="tab" aria-controls="logins-part" id="logins-part-trigger">
                        <span class="bs-stepper-circle">1</span>
                        <span class="bs-stepper-label">Logins</span>
                      </button>
                    </div>
                    <div class="line"></div>
                    <div class="step" data-target="#information-part">
                      <button type="button" class="step-trigger" role="tab" aria-controls="information-part" id="information-part-trigger">
                        
                       
                      </button>
                    </div>
                  </div>
            </div>
          </div>
                  <div class="bs-stepper-content">
                   <div id="logins-part" class="content" role="tabpanel" aria-labelledby="logins-part-trigger">
                         <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Role</label>
                  <asp:dropdownlist runat="server" ID="rolebox" class="form-control select2" style="width: 100%" required="">
                        <asp:ListItem Text="Admin" Value="Admin">
                        </asp:ListItem>
                        <asp:ListItem Text="Officer" Value="Officer">
                        </asp:ListItem>
                    </asp:dropdownlist>
                </div>
               
              </div>
            </div>
                 <div class="form-group">
                   <label for="exampleInputEmail1">User Name:</label>
                   <asp:TextBox ID="user" runat="server" class="form-control" required=""></asp:TextBox>
                </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Password:</label>
                       <%-- <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"/>--%>
                          <asp:TextBox ID="password" TextMode="Password" runat="server" class="form-control" required=""></asp:TextBox>
                      </div>
                     <%-- <button class="btn btn-primary" onclick="stepper.next()">LOGIN</button>--%>
                        <asp:Button ID="addusers" runat="server" Text="login" OnClick="button_clickl" class="btn btn-primary"/>
                </div>
              </div>
        </div>
       </div>
     </div>
   </form> 
</body>
</html>
