<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128564345/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E2445)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to find a node by its text using the GetNodeByText method
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e2445/)**
<!-- run online end -->


<p>This example demonstrates how to find a node by its text on the client side.<br />
In the example we use the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeViewScriptsASPxClientTreeView_GetNodeByTexttopic"><u>GetNodeByText</u></a> method to search for the required node. If a node has been found, the code iterates through parent nodes to expand them using the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeViewScriptsASPxClientTreeViewNode_SetExpandedtopic"><u>SetExpanded</u></a> method. After that the found note is selected using the <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeViewScriptsASPxClientTreeView_SetSelectedNodetopic"><u>SetSelectedNode</u></a> method. Note, that the ASPxTreeView's <a href="http://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeViewASPxTreeView_AllowSelectNodetopic"><u>AllowSelectNode</u></a> property is set to true to allow node selection.</p>

<br/>


