<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="hire.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form runat="server">
     <section class="content">
      <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">Select2 (Default Theme)</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
         
          <div class="card-body">

               <div class="form-group">
                  <label>First Name:</label>
                <%--  <input type="text" class="form-control my-colorpicker1">--%>
                   <asp:TextBox ID="first"  runat="server" class="form-control my-colorpicker1" required=""></asp:TextBox>
                </div>
               <div class="form-group">
                  <label>Last Name:</label>
                 <%-- <input type="text" class="form-control my-colorpicker1">--%>
                   <asp:TextBox ID="last"  runat="server" class="form-control my-colorpicker1" required=""></asp:TextBox>
                </div>
             
               <div class="form-group clearfix">
                   <label >SEX: </label>
                     <%-- <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary1" name="r1" checked>
                        <label for="radioPrimary1">male
                        </label>
                      </div>
                      <div class="icheck-primary d-inline">
                        <input type="radio" id="radioPrimary2" name="r1">
                        <label for="radioPrimary2">female
                        </label>
                      </div>--%>
                     <asp:TextBox ID="genboo" runat="server"  class="form-control my-colorpicker1" required=""></asp:TextBox>
                      
                    </div>
              
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Role</label>
                  <asp:dropdownlist runat="server" ID="roleboo" class="form-control select2" style="width: 100%" required="">
                        <asp:ListItem Text="Officer" Value="Officer">
                        </asp:ListItem>
                        <asp:ListItem Text="Stuff" Value="Stuff">
                        </asp:ListItem>
                        <asp:ListItem Text="Cook" Value="Cook">
                        </asp:ListItem>
                        <asp:ListItem Text="Cleaner" Value="Cleaner">
                        </asp:ListItem>
                    </asp:dropdownlist>
                </div>
               
              </div>
              <!-- /.col -->
              
            </div>
          </div>
            <div class="form-group">
             
                  <label>Birth Date:</label>
                    <div class="input-group date" id="reservationdate" data-target-input="nearest">
                        <input type="text" class="form-control datetimepicker-input" data-target="#reservationdate"/>
                        <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                            <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                        </div>
                    </div>
                
                </div>
              <div class="form-group">
                  <label>Age:</label>
                   <asp:TextBox ID="ageboo" runat="server" class="form-control" required=""></asp:TextBox>
                </div>
           <div class="form-group">
                  <label>Address:</label>
                 <%-- <input type="text" class="form-control my-colorpicker1">--%>
               <asp:TextBox ID="addressboo" runat="server" class="form-control my-colorpicker1" required=""></asp:TextBox>
                </div>
             <div class="form-group">
                  <label>phone:</label>
                 <%-- <input type="text" class="form-control my-colorpicker1">--%>
                   <asp:TextBox ID="phone"  runat="server" class="form-control my-colorpicker1" required=""></asp:TextBox>
                </div>
            <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <%--<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                 <asp:TextBox ID="exampleInputEmail1" TextMode="Email" runat="server" class="form-control" required=""></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                       <%-- <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                          <asp:TextBox ID="exampleInputPassword1" TextMode="Password" runat="server" class="form-control" placeholder="Password" required=""></asp:TextBox>
                      </div>
             <div class="col-lg-6">
                    <div class="btn-group w-100">
                      
                     <%-- <button type="submit" class="btn btn-primary col start">
                        <i class="fas fa-upload"></i>
                        <span>Add</span>
                      </button>--%>
                        <asp:Button ID="adding" runat="server" Text="Hire" OnClick="button_clicked"  class="btn btn-primary col start"/>
                      
                    </div>
                  </div>
            
        </div>
            </div>
    </section>
    </form>

   <script src="../assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Select2 -->
<script src="../assets/plugins/select2/js/select2.full.min.js"></script>
<!-- Bootstrap4 Duallistbox -->
<script src="../assets/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
<!-- InputMask -->
<script src="../assets/plugins/moment/moment.min.js"></script>
<script src="../assets/plugins/inputmask/jquery.inputmask.min.js"></script>
<!-- date-range-picker -->
<script src="../assets/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap color picker -->
<script src="../assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="../assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Bootstrap Switch -->
<script src="../assets/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<!-- BS-Stepper -->
<script src="../assets/plugins/bs-stepper/js/bs-stepper.min.js"></script>
<!-- dropzonejs -->
<script src="../assets/plugins/dropzone/min/dropzone.min.js"></script>
<!-- AdminLTE App -->
<script src="../assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../assets/dist/js/demo.js"></script>
</asp:Content>
