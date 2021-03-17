<html>
<com:THead>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
</com:THead>
<body>
<com:TForm>
    <div id="page">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="#" class="navbar-brand">My Prado Blog</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <p class="text-info">
                <com:TLiteral Text="@<%= $this->User->Name %>" Visible="<%= !$this->User->IsGuest %>"/>
            </p>


            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <com:THyperLink
                                        CssClass="nav-link"
                                        Text="Home"
                                        NavigateUrl="<%= $this->Service->DefaultPageUrl %>" />
                    </li>
                    <li class="nav-item">
                        <com:THyperLink
                                        CssClass="nav-link btn btn-success text-white mr-2 mb-2 text-uppercase"
                                        Text="New Post"
                                        NavigateUrl="<%= $this->Service->constructUrl('posts.NewPost') %>"
                                        Visible="<%= !$this->User->IsGuest %>" />
                    </li>
                    <li class="nav-item">
                        <com:THyperLink
                                        CssClass="nav-link btn btn-info text-white mr-2 mb-2 text-uppercase"
                                        Text="New User"
                                        NavigateUrl="<%= $this->Service->constructUrl('users.NewUser') %>"
                                        Visible="<%= $this->User->IsAdmin %>" />
                    </li>
                    <li class="nav-item">
                        <com:THyperLink
                                        CssClass="btn btn-primary text-white mr-2 mb-2 text-uppercase"
                                        Text="Login"
                                        NavigateUrl="<%= $this->Service->constructUrl('users.LoginUser') %>"
                                        Visible="<%= $this->User->IsGuest %>"/>
                    </li>
                    <li class="nav-item">
                        <com:TLinkButton
                                         CssClass="btn btn-danger text-white text-uppercase"
                                         Text="Logout"
                                         OnClick="logoutButtonClicked"
                                         Visible="<%= !$this->User->IsGuest %>"
                                         CausesValidation="false"/>
                    </li>
                </ul>
            </div>
        </nav>
        <main id="main">
            <com:TContentPlaceHolder ID="Main"/>
        </main>
    </div>
</com:TForm>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</body>
</html>