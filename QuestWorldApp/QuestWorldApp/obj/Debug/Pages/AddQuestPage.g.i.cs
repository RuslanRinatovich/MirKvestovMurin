﻿#pragma checksum "..\..\..\Pages\AddQuestPage.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "8A99AEC0CB69924DB6512DC1D0C31B74CAE6FD28A460D3DF0AF48203E8630183"
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
using QuestWorldApp.Pages;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using Xceed.Wpf.Toolkit;
using Xceed.Wpf.Toolkit.Chromes;
using Xceed.Wpf.Toolkit.Converters;
using Xceed.Wpf.Toolkit.Core;
using Xceed.Wpf.Toolkit.Core.Converters;
using Xceed.Wpf.Toolkit.Core.Input;
using Xceed.Wpf.Toolkit.Core.Media;
using Xceed.Wpf.Toolkit.Core.Utilities;
using Xceed.Wpf.Toolkit.Mag.Converters;
using Xceed.Wpf.Toolkit.Panels;
using Xceed.Wpf.Toolkit.Primitives;
using Xceed.Wpf.Toolkit.PropertyGrid;
using Xceed.Wpf.Toolkit.PropertyGrid.Attributes;
using Xceed.Wpf.Toolkit.PropertyGrid.Commands;
using Xceed.Wpf.Toolkit.PropertyGrid.Converters;
using Xceed.Wpf.Toolkit.PropertyGrid.Editors;
using Xceed.Wpf.Toolkit.Zoombox;


namespace QuestWorldApp.Pages {
    
    
    /// <summary>
    /// AddQuestPage
    /// </summary>
    public partial class AddQuestPage : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector {
        
        
        #line 31 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnSave;
        
        #line default
        #line hidden
        
        
        #line 47 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image ImagePhoto;
        
        #line default
        #line hidden
        
        
        #line 50 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button BtnLoad;
        
        #line default
        #line hidden
        
        
        #line 54 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TextBoxTitle;
        
        #line default
        #line hidden
        
        
        #line 57 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox TextBoxDescription;
        
        #line default
        #line hidden
        
        
        #line 61 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal Xceed.Wpf.Toolkit.IntegerUpDown IntegerUpDownMinimum;
        
        #line default
        #line hidden
        
        
        #line 63 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal Xceed.Wpf.Toolkit.IntegerUpDown IntegerUpDownMaximum;
        
        #line default
        #line hidden
        
        
        #line 65 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal Xceed.Wpf.Toolkit.IntegerUpDown IntegerUpDownDuration;
        
        #line default
        #line hidden
        
        
        #line 67 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal MaterialDesignThemes.Wpf.RatingBar RatingBarComplexity;
        
        #line default
        #line hidden
        
        
        #line 78 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal MaterialDesignThemes.Wpf.RatingBar RatingBarFearLevel;
        
        #line default
        #line hidden
        
        
        #line 92 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal Xceed.Wpf.Toolkit.CheckComboBox ComboCategories;
        
        #line default
        #line hidden
        
        
        #line 96 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ComboAge;
        
        #line default
        #line hidden
        
        
        #line 100 "..\..\..\Pages\AddQuestPage.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox ComboOrganizer;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/QuestWorldApp;component/pages/addquestpage.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Pages\AddQuestPage.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.BtnSave = ((System.Windows.Controls.Button)(target));
            
            #line 33 "..\..\..\Pages\AddQuestPage.xaml"
            this.BtnSave.Click += new System.Windows.RoutedEventHandler(this.BtnSaveClick);
            
            #line default
            #line hidden
            return;
            case 2:
            this.ImagePhoto = ((System.Windows.Controls.Image)(target));
            return;
            case 3:
            this.BtnLoad = ((System.Windows.Controls.Button)(target));
            
            #line 52 "..\..\..\Pages\AddQuestPage.xaml"
            this.BtnLoad.Click += new System.Windows.RoutedEventHandler(this.BtnLoadClick);
            
            #line default
            #line hidden
            return;
            case 4:
            this.TextBoxTitle = ((System.Windows.Controls.TextBox)(target));
            return;
            case 5:
            this.TextBoxDescription = ((System.Windows.Controls.TextBox)(target));
            return;
            case 6:
            this.IntegerUpDownMinimum = ((Xceed.Wpf.Toolkit.IntegerUpDown)(target));
            return;
            case 7:
            this.IntegerUpDownMaximum = ((Xceed.Wpf.Toolkit.IntegerUpDown)(target));
            return;
            case 8:
            this.IntegerUpDownDuration = ((Xceed.Wpf.Toolkit.IntegerUpDown)(target));
            return;
            case 9:
            this.RatingBarComplexity = ((MaterialDesignThemes.Wpf.RatingBar)(target));
            return;
            case 10:
            this.RatingBarFearLevel = ((MaterialDesignThemes.Wpf.RatingBar)(target));
            return;
            case 11:
            this.ComboCategories = ((Xceed.Wpf.Toolkit.CheckComboBox)(target));
            return;
            case 12:
            this.ComboAge = ((System.Windows.Controls.ComboBox)(target));
            return;
            case 13:
            this.ComboOrganizer = ((System.Windows.Controls.ComboBox)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

