<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="prisoner.aspx.cs" Inherits="WebApplication1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form runat="server">
    <title>mine | employee</title>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
           
            <!-- /.card -->
                 <div class="card">
              <div class="card-header">
                <h3 class="card-title">DataTable with default features</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                  <div class="card">
              <div class="card-header">
                <h3 class="card-title">Search:</h3>
                 <input type="text" id="namebox" onkeyup="tablesearch()" class="form-control" />
                  <%--<asp:TextBox ID="namebox" onkeyup="tablesearch()" runat="server" class="form-control" required="" style="height:60px;margin:10px;font-size:20px"></asp:TextBox>
                  <asp:Button ID="adduser" runat="server" Text="search" OnClick="button_clicked" class="btn btn-success"/>--%>
              </div>
             
              <div class="card-body">
               
              </div>
              
            </div>
                <table id="example1" class="table table-bordered table-striped" style="display:normal">
                    <thead>
                        <tr>
                            <th data-field="state" data-checkbox="true"></th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Age</th>
                            <th>Address</th>
                            <th>Sex</th>
                        </tr>
                    </thead>
                    <tbody id="Tbody1" runat="server">

                    </tbody>
                    <tfoot>
                        <tr>
                            <th data-field="state" data-checkbox="true"></th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Age</th>
                            <th>Address</th>
                            <th>Sex</th>
                        </tr>
                    </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>

 

        </form>

    <script type="application/javascript">

        function tablesearch(){
          let input, filter, table, tr, td, txtvalue;
          input = document.getElementById("namebox");
          filter = input.value.toUpperCase();
          table = document.getElementById("example1");
          tr = document.getElementByTagName("tr");
          for(let i=0; i<tr.length; i++){
                 td = tr[i].getElementByTagName("td")[0];
                 if(td){
                       txtvalue = td.Text || td.innerText;
                       if(txtvalue.toUpperCase().indexOf(filter) > -1){
                               tr[i].style.display = "";
                            
                            }
                        else{tr[i].style.display = "none";}
                     }
                 }
      }
        
        
    </script>

    <script src="../assets/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="../assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="../assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="../assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="../assets/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="../assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="../assets/plugins/jszip/jszip.min.js"></script>
<script src="../assets/plugins/pdfmake/pdfmake.min.js"></script>
<script src="../assets/plugins/pdfmake/vfs_fonts.js"></script>
<script src="../assets/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="../assets/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="../assets/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="../assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../assets/dist/js/demo.js"></script>
<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</asp:Content>
