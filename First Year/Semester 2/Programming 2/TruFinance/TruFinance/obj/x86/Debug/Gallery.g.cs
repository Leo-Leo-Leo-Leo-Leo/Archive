﻿#pragma checksum "C:\Work\Leardo Taylor\TruFinance\TruFinance\Gallery.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "878528C4E3ADBD2DC22D40133E35C6DA5F99A66D38DDED0431B284AA73535219"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TruFinance
{
    partial class Gallery : 
        global::Windows.UI.Xaml.Controls.Page, 
        global::Windows.UI.Xaml.Markup.IComponentConnector,
        global::Windows.UI.Xaml.Markup.IComponentConnector2
    {
        /// <summary>
        /// Connect()
        /// </summary>
        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 14.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public void Connect(int connectionId, object target)
        {
            switch(connectionId)
            {
            case 1:
                {
                    this.btnLogout = (global::Windows.UI.Xaml.Controls.Button)(target);
                    #line 19 "..\..\..\Gallery.xaml"
                    ((global::Windows.UI.Xaml.Controls.Button)this.btnLogout).Click += this.btnLogout_Click;
                    #line default
                }
                break;
            case 2:
                {
                    this.btnCalc = (global::Windows.UI.Xaml.Controls.Button)(target);
                    #line 20 "..\..\..\Gallery.xaml"
                    ((global::Windows.UI.Xaml.Controls.Button)this.btnCalc).Click += this.btnCalc_Click;
                    #line default
                }
                break;
            case 3:
                {
                    this.btnMaps = (global::Windows.UI.Xaml.Controls.Button)(target);
                    #line 21 "..\..\..\Gallery.xaml"
                    ((global::Windows.UI.Xaml.Controls.Button)this.btnMaps).Click += this.btnMaps_Click;
                    #line default
                }
                break;
            default:
                break;
            }
            this._contentLoaded = true;
        }

        [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.Windows.UI.Xaml.Build.Tasks"," 14.0.0.0")]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        public global::Windows.UI.Xaml.Markup.IComponentConnector GetBindingConnector(int connectionId, object target)
        {
            global::Windows.UI.Xaml.Markup.IComponentConnector returnValue = null;
            return returnValue;
        }
    }
}

