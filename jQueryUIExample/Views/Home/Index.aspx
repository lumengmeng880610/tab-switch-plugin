<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Home Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/themes/base/jquery-ui-1.8.24.custom.css" type="text/css" rel="stylesheet" />
    <script src="../../Scripts/jquery-ui-1.8.11.min.js" type="text/javascript"></script>
    <div id="tabs">
        <ul>
            <li><a href="#tabs-1">Tabs1</a></li>
            <li><a href="#tabs-2">Tabs2</a></li>
            <li><a href="#tabs-3">Tabs3</a></li>
        </ul>
        <div id="tabs-1">
            <div id="accordion1">
                <h3><a href="#">Section 1</a></h3>
                <div>
                    <div id="subaccortion">
                        <h3><a href="#">subaccortion</a></h3>
                        <div>content of subaccortion</div>
                    </div>
                </div>
            </div>
            <div id="accordion2">
                <h3>
                    <a href="#">Section 2</a></h3>
                <div>
                    content of section 2</div>
            </div>
            <div id="accordion3">
                <h3>
                    <a href="#">Section 3</a></h3>
                <div>
                    content of section 3</div>
            </div>
        </div>
        <div id="tabs-2">
            <p>
                content of tab two</p>
        </div>
        <div id="tabs-3">
            <p>
                content of tab three</p>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#tabs").tabs();
            $("#accordion1").accordion({ collapsible: true, autoHeight: false,
                icons: { "header": "ui-icon-carat-1-n", "headerSelected": "ui-icon-carat-1-s" } 
            });
            $("#subaccortion").accordion({ collapsible: true, active:false ,
                icons: { "header": "ui-icon-carat-1-n", "headerSelected": "ui-icon-carat-1-s" }
            });
            $("#accordion2").accordion({ collapsible: true, autoHeight: false ,
                icons: { "header": "ui-icon-carat-1-n", "headerSelected": "ui-icon-carat-1-s" }
            });
            $("#accordion3").accordion({ collapsible: true, autoHeight: false,
                icons: { "header": "ui-icon-carat-1-n", "headerSelected": "ui-icon-carat-1-s" }
            });
        })
    </script>
</asp:Content>
