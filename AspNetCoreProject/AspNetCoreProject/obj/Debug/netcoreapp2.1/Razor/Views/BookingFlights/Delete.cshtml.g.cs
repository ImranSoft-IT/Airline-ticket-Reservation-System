#pragma checksum "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "5976a260105cfe0e3be8567abdc554dee9d2d1be"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_BookingFlights_Delete), @"mvc.1.0.view", @"/Views/BookingFlights/Delete.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/BookingFlights/Delete.cshtml", typeof(AspNetCore.Views_BookingFlights_Delete))]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"5976a260105cfe0e3be8567abdc554dee9d2d1be", @"/Views/BookingFlights/Delete.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"2285bb825f61789da0ac787590a37797075134b1", @"/Views/_ViewImports.cshtml")]
    public class Views_BookingFlights_Delete : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<AspNetCoreProject.Models.BookingFlight>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("type", "hidden", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Index", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Delete", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(47, 2, true);
            WriteLiteral("\r\n");
            EndContext();
#line 3 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
  
    ViewData["Title"] = "Delete";

#line default
#line hidden
            BeginContext(91, 174, true);
            WriteLiteral("\r\n<h2>Delete</h2>\r\n\r\n<h3>Are you sure you want to delete this?</h3>\r\n<div>\r\n    <h4>BookingFlight</h4>\r\n    <hr />\r\n    <dl class=\"dl-horizontal\">\r\n        <dt>\r\n            ");
            EndContext();
            BeginContext(266, 45, false);
#line 15 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
       Write(Html.DisplayNameFor(model => model.FromPlace));

#line default
#line hidden
            EndContext();
            BeginContext(311, 43, true);
            WriteLiteral("\r\n        </dt>\r\n        <dd>\r\n            ");
            EndContext();
            BeginContext(355, 41, false);
#line 18 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
       Write(Html.DisplayFor(model => model.FromPlace));

#line default
#line hidden
            EndContext();
            BeginContext(396, 43, true);
            WriteLiteral("\r\n        </dd>\r\n        <dt>\r\n            ");
            EndContext();
            BeginContext(440, 47, false);
#line 21 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
       Write(Html.DisplayNameFor(model => model.Destination));

#line default
#line hidden
            EndContext();
            BeginContext(487, 43, true);
            WriteLiteral("\r\n        </dt>\r\n        <dd>\r\n            ");
            EndContext();
            BeginContext(531, 43, false);
#line 24 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
       Write(Html.DisplayFor(model => model.Destination));

#line default
#line hidden
            EndContext();
            BeginContext(574, 43, true);
            WriteLiteral("\r\n        </dd>\r\n        <dt>\r\n            ");
            EndContext();
            BeginContext(618, 46, false);
#line 27 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
       Write(Html.DisplayNameFor(model => model.FlightDate));

#line default
#line hidden
            EndContext();
            BeginContext(664, 43, true);
            WriteLiteral("\r\n        </dt>\r\n        <dd>\r\n            ");
            EndContext();
            BeginContext(708, 42, false);
#line 30 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
       Write(Html.DisplayFor(model => model.FlightDate));

#line default
#line hidden
            EndContext();
            BeginContext(750, 43, true);
            WriteLiteral("\r\n        </dd>\r\n        <dt>\r\n            ");
            EndContext();
            BeginContext(794, 43, false);
#line 33 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
       Write(Html.DisplayNameFor(model => model.Country));

#line default
#line hidden
            EndContext();
            BeginContext(837, 43, true);
            WriteLiteral("\r\n        </dt>\r\n        <dd>\r\n            ");
            EndContext();
            BeginContext(881, 48, false);
#line 36 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
       Write(Html.DisplayFor(model => model.Country.Country1));

#line default
#line hidden
            EndContext();
            BeginContext(929, 43, true);
            WriteLiteral("\r\n        </dd>\r\n        <dt>\r\n            ");
            EndContext();
            BeginContext(973, 46, false);
#line 39 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
       Write(Html.DisplayNameFor(model => model.FlightInfo));

#line default
#line hidden
            EndContext();
            BeginContext(1019, 43, true);
            WriteLiteral("\r\n        </dt>\r\n        <dd>\r\n            ");
            EndContext();
            BeginContext(1063, 55, false);
#line 42 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
       Write(Html.DisplayFor(model => model.FlightInfo.FlightNunber));

#line default
#line hidden
            EndContext();
            BeginContext(1118, 43, true);
            WriteLiteral("\r\n        </dd>\r\n        <dt>\r\n            ");
            EndContext();
            BeginContext(1162, 49, false);
#line 45 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
       Write(Html.DisplayNameFor(model => model.PassengerInfo));

#line default
#line hidden
            EndContext();
            BeginContext(1211, 43, true);
            WriteLiteral("\r\n        </dt>\r\n        <dd>\r\n            ");
            EndContext();
            BeginContext(1255, 57, false);
#line 48 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
       Write(Html.DisplayFor(model => model.PassengerInfo.PhoneNumber));

#line default
#line hidden
            EndContext();
            BeginContext(1312, 38, true);
            WriteLiteral("\r\n        </dd>\r\n    </dl>\r\n    \r\n    ");
            EndContext();
            BeginContext(1350, 211, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "62bdf720b6184f87897f62498c9ee497", async() => {
                BeginContext(1376, 10, true);
                WriteLiteral("\r\n        ");
                EndContext();
                BeginContext(1386, 40, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("input", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.SelfClosing, "94eb1195f93c478b8c4881c99338a214", async() => {
                }
                );
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.InputTagHelper>();
                __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper);
                __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.InputTypeName = (string)__tagHelperAttribute_0.Value;
                __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
#line 53 "F:\Enterprise Systems Analysis and Design C#\Git-Hub\AirlinceProject Core\AspNetCoreProject\AspNetCoreProject\Views\BookingFlights\Delete.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => __model.BookID);

#line default
#line hidden
                __tagHelperExecutionContext.AddTagHelperAttribute("asp-for", __Microsoft_AspNetCore_Mvc_TagHelpers_InputTagHelper.For, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
                await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
                if (!__tagHelperExecutionContext.Output.IsContentModified)
                {
                    await __tagHelperExecutionContext.SetOutputContentAsync();
                }
                Write(__tagHelperExecutionContext.Output);
                __tagHelperExecutionContext = __tagHelperScopeManager.End();
                EndContext();
                BeginContext(1426, 84, true);
                WriteLiteral("\r\n        <input type=\"submit\" value=\"Delete\" class=\"btn btn-default\" /> |\r\n        ");
                EndContext();
                BeginContext(1510, 38, false);
                __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "bb6e28685b3a486a8eb6cb15243ff514", async() => {
                    BeginContext(1532, 12, true);
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
                BeginContext(1548, 6, true);
                WriteLiteral("\r\n    ");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper.Action = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(1561, 10, true);
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<AspNetCoreProject.Models.BookingFlight> Html { get; private set; }
    }
}
#pragma warning restore 1591
