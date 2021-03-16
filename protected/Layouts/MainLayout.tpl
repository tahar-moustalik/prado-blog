<html>
<com:THead/>
<body>
<com:TForm>
    <div id="page">
        <header id="header">
            <h1>My PRADO Blog</h1>
        </header>
        <main id="main">
            <com:TContentPlaceHolder ID="Main"/>
        </main>
        <footer id="footer">
            <com:THyperLink Text="Login"
                            NavigateUrl="/index.php?page=users.LoginUser"
                            Visible="<%= $this->User->IsGuest %>"/>
            <com:TLinkButton Text="Logout"
                             OnClick="logoutButtonClicked"
                             Visible="<%= !$this->User->IsGuest %>"
                             CausesValidation="false"/>
            <br/>
            <%= PRADO::poweredByPrado() %>
        </footer>
    </div>
</com:TForm>
</body>
</html>