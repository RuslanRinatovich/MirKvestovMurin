   M S B A M L   `   `   `  ����H  DQuestWorldApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:QuestWorldApp.PagesQuestWorldApp.Pages  5      '    !QuestWorldApp.Pages.TimeSheetPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:QuestWorldApp.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5        N� Title$  Расписание��5
   	   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��300 �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $��40 �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��2��6.   .+�5      �� $!��Выберите квест��6    $   MaterialDesignSubtitle2TextBlock#��[  62   �� 5      -   5         ��Name$ ComboQuests��5   5   $��Stretch=�6   $	��400��6J    �� SelectedValuePath$ Id��5       �� DisplayMemberPath$ Title��5      5      � 5   
   -   5         �Name$ GridGood��5      $	��300��6!   $��1��6-   $��0��6:    5      �� 5       $	��260 �6    �� 5"      $
��auto �6    .+�5%      �� $��0��6   $��Uniform=�6"   $	��Top=�64   $��Center=�5&       ��5'       ��  �� Path$ GetPhoto��� 5(      $��0��6   $��Right=�6,   .+�5)      (  "MaterialDesignThemes.Wpf.RatingBar  $��0 10 5 5q�6-   	   
IsReadOnly	 . $��Right=�5*   L   
   Orientation$
 
Horizontal=�5,   8   
   Max 5+   8   �� *	FearLevel+   Value 5-   8   �� *	FearLevel+   ValueItemTemplate 5.      �� 5/       �� DataType$ system:Int32��6'   .R�50      � .+�51   "   '  !MaterialDesignThemes.Wpf.PackIcon  $��24��6:   $��24��6F      Kind$ SkullCrossbones=�6T   
�������6l   52      53      55        56      $��0 0 5 5q�6-   	 . $��Right=�57   K   $
 
Horizontal=�59   8    58   8   �� *
Complexity+ 5:   8   �� *
Complexity+ 5;      �� 5<      $ system:Int32��6'   .R�5=      � .+�5>   "     $��24��6:   $��24��6F   $	 Key=�6T   
�������6_   5?      5@      5B      �� 5C      $ 
Horizontal=�6   $��Right=�66   $��0 0 5 5q�6R   .+�5D        $��24��6.   $��24��6:   $	 Man=�6H   
�������6S   �� 5E      
�������$��16(�6S   $
��Bold"�6a   ��6    �� *GetPeopleCount+6a   5F      �� 5G      
�������$��18(�6J   $
��Bold"�6X   $��Right=�6j   $��0 0 5 5q�6�   ��6   �� *	Age.Title+6�   5H        5K      -   5          Name$ RatingBarRate��5K   5   $��2��6'   $��10 0 0 0q�6L   $��Right=�6^   	 .  6�   �� *	GetRate+5N      &   System.Windows.Controls.DataGrid  5O   
   -   5          Name$ DtData��5O         AutoGenerateColumns .  $��1��6@   $��1��6M      
IsReadOnly .    SelectionMode$ Single =�5Q         Columns 5R      0  *System.Windows.Controls.DataGridTextColumn  5S      ,  &System.Windows.Controls.DataGridColumn   Header$ № п��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   �� *Id+  5U      $ Дата��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6x    63   �� *Date+ �� StringFormat$ d�� �� ConverterCulture$ ru-RU��6x     5V      $ 
Время��6%   $ * 6_    64   �� *Time+$ t��6_     5W      $ Стоимость��6%    68   �� *Price+$ c��$ ru-RU��5Z      �� 5[   
   $��2��6   $��1��6"   $ 
Horizontal=�62   $��Center=�6K   $��Center=�6f   .+�5\      �� -   5         ��Name$ btnAdd��5\      $��Добавить��6%   68   �� 5]      -   5        $ 	btnChange��5]      $��Изменить��6(   6;   �� 5^      -   5        $ 	btnDelete��5^      $��Удалить��6(   6:   5_      5a      5b      