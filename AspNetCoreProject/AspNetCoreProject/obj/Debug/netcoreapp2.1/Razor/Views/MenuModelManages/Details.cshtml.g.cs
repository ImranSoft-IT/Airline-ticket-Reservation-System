#pragma checksum "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\MenuModelManages\Details.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5c5d9dfa6d1cf6d1ddd7a888e36f2d5edb5e38f6"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_MenuModelManages_Details), @"mvc.1.0.view", @"/Views/MenuModelManages/Details.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/MenuModelManages/Details.cshtml", typeof(AspNetCore.Views_MenuModelManages_Details))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\_ViewImports.cshtml"
using AspNetCoreProject;

#line default
#line hidden
#line 2 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\_ViewImports.cshtml"
using AspNetCoreProject.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5c5d9dfa6d1cf6d1ddd7a888e36f2d5edb5e38f6", @"/Views/MenuModelManages/Details.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"2285bb825f61789da0ac787590a37797075134b1", @"/Views/_ViewImports.cshtml")]
    public class Views_MenuModelManages_Details : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<AspNetCoreProject.Models.MenuModelManage>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Edit", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(49, 2, true);
            WriteLiteral("\r\n");
            EndContext();
#line 3 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\MenuModelManages\Details.cshtml"
  
    ViewData["Title"] = "Details";

#line default
#line hidden
            BeginContext(94, 127, true);
            WriteLiteral("\r\n    <h2>Details Menu Model Manage</h2>\r\n\r\n<div>\r\n    \r\n    <hr />\r\n    <dl class=\"dl-horizontal\">\r\n        <dt>\r\n            ");
            EndContext();
            BeginContext(222, 42, false);
#line 14 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\MenuModelManages\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.Insert));

#line default
#line hidden
            EndContext();
            BeginContext(264, 43, true);
            WriteLiteral("\r\n        </dt>\r\n        <dd>\r\n            ");
            EndContext();
            BeginContext(308, 38, false);
#line 17 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\MenuModelManages\Details.cshtml"
       Write(Html.DisplayFor(model => model.Insert));

#line default
#line hidden
            EndContext();
            BeginContext(346, 43, true);
            WriteLiteral("\r\n        </dd>\r\n        <dt>\r\n            ");
            EndContext();
            BeginContext(390, 42, false);
#line 20 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\MenuModelManages\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.Update));

#line default
#line hidden
            EndContext();
            BeginContext(432, 43, true);
            WriteLiteral("\r\n        </dt>\r\n        <dd>\r\n            ");
            EndContext();
            BeginContext(476, 38, false);
#line 23 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\MenuModelManages\Details.cshtml"
       Write(Html.DisplayFor(model => model.Update));

#line default
#line hidden
            EndContext();
            BeginContext(514, 43, true);
            WriteLiteral("\r\n        </dd>\r\n        <dt>\r\n            ");
            EndContext();
            BeginContext(558, 42, false);
#line 26 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\MenuModelManages\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.Delete));

#line default
#line hidden
            EndContext();
            BeginContext(600, 43, true);
            WriteLiteral("\r\n        </dt>\r\n        <dd>\r\n            ");
            EndContext();
            BeginContext(644, 38, false);
#line 29 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\MenuModelManages\Details.cshtml"
       Write(Html.DisplayFor(model => model.Delete));

#line default
#line hidden
            EndContext();
            BeginContext(682, 43, true);
            WriteLiteral("\r\n        </dd>\r\n        <dt>\r\n            ");
            EndContext();
            BeginContext(726, 45, false);
#line 32 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\MenuModelManages\Details.cshtml"
       Write(Html.DisplayNameFor(model => model.MenuModel));

#line default
#line hidden
            EndContext();
            BeginContext(771, 43, true);
            WriteLiteral("\r\n        </dt>\r\n        <dd>\r\n            ");
            EndContext();
            BeginContext(815, 44, false);
#line 35 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\MenuModelManages\Details.cshtml"
       Write(Html.DisplayFor(model => model.MenuModel.Id));

#line default
#line hidden
            EndContext();
            BeginContext(859, 47, true);
            WriteLiteral("\r\n        </dd>\r\n    </dl>\r\n</div>\r\n<div>\r\n    ");
            EndContext();
            BeginContext(906, 63, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "c438615331ef4f1caf6dd993ff8efbde", async() => {
                BeginContext(961, 4, true);
                WriteLiteral("Edit");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#line 40 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\MenuModelManages\Details.cshtml"
                           WriteLiteral(Model.MenuModelId);

#line default
#line hidden
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(969, 8, true);
            WriteLiteral(" |\r\n    ");
            EndContext();
            BeginContext(977, 38, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cf13c7449801465db9d7ae1952187248", async() => {
                BeginContext(999, 12, true);
                WriteLiteral("Back to List");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(1015, 10, true);
            WriteLiteral("\r\n</div>\r\n");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<AspNetCoreProject.Models.MenuModelManage> Html { get; private set; }
    }
}
#pragma warning restore 1591
