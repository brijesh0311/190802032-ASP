<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="Manage_users.aspx.cs" Inherits="Website.WebForm6" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <section class="wrapper">
        
        <div class="form-w3layouts">
            <!-- page start-->
            <!-- page start-->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Basic Forms
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                
                                     <div class="form-group">
                                        <label for="exampleInputEmail1">Full Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:TextBox ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>


                                    </div>   

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <%--<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email">--%>
                                         <asp:TextBox ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>

                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Number</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Number"></asp:TextBox>

                                    </div>
                                <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
                                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Password"></asp:TextBox>

                                    </div>
                                    <div>
                                        <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                                    </div>
                                    <div>
                                    <%--<button type="submit" class="btn btn-info">Submit</button>--%>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
                                    <asp:Button ID="Button1" runat="server" Text="Upadate" class="btn btn-info" OnClick="Button1_Click" />
                                    </div>
                                <div class="checkbox">
                                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                    </div>
                                    <div class="checkbox">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="200" CellSpacing="5" Font-Size="Medium" Height="80px" Width="650px">
                                            <Columns>
                                                <asp:TemplateField HeaderText="ID">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Name">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("name") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Email">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("email") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                
                                                <asp:TemplateField HeaderText="Number">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("number") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Password">
                                                    <ItemTemplate>
                                                        <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("password") %>'></asp:Literal>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Edit">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("id") %>' Height="40px" ImageAlign="Middle" ImageUrl="~/SRC/Edit.png" OnClick="ImageButton2_Click" Width="40px" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Delete">
                                                    <ItemTemplate>
                                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("id") %>' Height="50px" ImageAlign="Middle" ImageUrl="~/SRC/delete.png" OnClick="ImageButton1_Click" OnClientClick="return confirm('Are You sure ?')" Width="50px" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" BorderWidth="10px" />
                                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                                        </asp:GridView>
                                    </div>
                                    <div class="checkbox">
                                        

                                    </div>
                                
                            </div>

                        </div>
                    </section>

                </div>
            </div>
            

            <!-- page end-->
        </div>
            
    </section>
</asp:Content>
