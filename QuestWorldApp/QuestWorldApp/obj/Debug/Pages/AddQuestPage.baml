   M S B A M L   `   `   `  ����H  DQuestWorldApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:QuestWorldApp.PagesQuestWorldApp.Pages  5      &     QuestWorldApp.Pages.AddQuestPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -local!clr-namespace:QuestWorldApp.Pages  5      X TXceed.Wpf.Toolkit, Version=4.5.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  67     N� Title$:  4Добавление и редактирование��5
      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��30 �6   �� 5      $��80 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��30 �6   �� 5      $��40 �6    � ColumnDefinitions 5   
   �� 5      $	��245 �6   �� 5      .+�5   
   �� -   5         ��Name$ BtnSave��5      $��11��6"   $��Сохранить��60   $��Center=�5       $	��Top=�6.   $	��120��6F   $��1��5!   &   $��213,3,222,0q�66   �� 5#   
   $��0��6   $��0��6"   $��Фото��62   $
��20 0q�6?   �� 5$   
   $��1��6   $��0��6!   $��Название��61   $
��20 0q�6B   �� 5%   
   $��2��6   $��0��6!   $��Описание��61   $
��20 0q�6B   �� 5&   
   $��3��6   $��0��6!   $)��#Количество игроков��61   $
��20 0q�6L   �� 5'   
   $��4��6   $��0��6!   $��Время, мин��61   $
��20 0q�6D   �� 5(   
   $��5��6   $��0��6!   $��Сложность��61   $
��20 0q�6C   �� 5)   
   $��6��6   $��0��6!   $!��Уровень страха��61   $
��20 0q�6H   �� 5*   
   $��7��6   $��0��6!   $��Направления��61   $
��20 0q�6E   �� 5+   
   $��8��6   $��0��6!   $-��'Возрастная категория��61   $
��20 0q�6N   �� 5,   
   $��9��6   $��0��6!   $��Организатор��61   $
��20 0q�6E   �� 5/   
   -   5         ��Name$ 
ImagePhoto��5/      $��0��50      $��1��6   $��10 0 0 0q�6-   $��Stretch=�51      $��Stretch=�6,   ��5/   $   �� *
GetPhoto+51   ,   �� 52   
   -   5        $ BtnLoad��52      $��0��6"   $��0��6/   $��	120,5,0,0q�6?   $
��Left=�53      $	��Top=�6,   $��79��54   V   ��6&   0  *MaterialDesignThemes.Wpf.PackIconExtension     Kind$ Upload=�6V   �� 56   
   -   5         ��Name$ TextBoxTitle��56      $��1��57      $��1��6   $	��0,2q�6/   $
��Auto��6=   ��56   (   �� *Title+57   =   �� 59   
   -   5        $ TextBoxDescription��59      $��2��5:      $��1��6   $	��0,2q�6/   $
��Auto��6=    �� TextWrapping$
 Wrap=�6K   ��59   .   �� *Description+5:   K   �� 5;   
   $��3��6   $��1��6#    �� Orientation$ 
Horizontal=�63   .+�5<      �� $
��от��6   $��Center=�6"   $
��10 0q�6=   %  Xceed.Wpf.Toolkit.IntegerUpDown  5=      -   5        	  Name$	 IntegerUpDownMinimum��5=   !   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]
   Minimum$
 1X�6?   $	��100��6K      Value 6W   �� *MinPlayersCount+�� 5>      $
��до��6   $
��10 0q�6"   $��Center=�60     5?      -   5        $	 IntegerUpDownMaximum��5?   !   $
 1X�6?   $	��100��6L    6X   �� *MaxPlayersCount+5@        5A   
   -   5        $	 IntegerUpDownDuration��5A      $
��Left=�6<   $��4��6X   $��1��6e   $
 1X�6u   $	��100��6�    6�   �� *
Duration+(  "MaterialDesignThemes.Wpf.RatingBar  5C   
   -	   5          Name$ RatingBarComplexity��5C   $   $��5��6B   $��1��6O   $
��Left=�6`   
   Max$ 5��6{      Orientation$ 
Horizontal=�6�      Value 6�   �� *
Complexity+   ValueItemTemplate 5D      �� 5E       �� DataType$ system:Int32��6   .R�5F      � .+�5G      '  !MaterialDesignThemes.Wpf.PackIcon  $��24��62   $��24��6>      Kind$	 Key=�6L   �� 5H      $��Center=�6$   $��Center=�6B   $��8(�6^       PrimaryHueMidForegroundBrush#���   6l   ��6�   �� 5I      5J      5L        5N   
   -
   5        $ RatingBarFearLevel��5N   $   $��6��6A   $��1��6N   $
��Left=�6_   $ 5��6z   $ 
Horizontal=�6�    6�   �� *	FearLevel+ 5O      �� 5P      $ system:Int32��6   .R�5Q      � .+�5R        $��24��62   $��24��6>   $ SkullCrossbones=�6L   �� 5S      $��Center=�6$   $��Center=�6B   $��8(�6^   #���   6l   ��6�   �� 5T      5U      5W      %  Xceed.Wpf.Toolkit.CheckComboBox  5\   
   -   5          Name$ ComboCategories��5\      $��7��67   $��1��6D    �� DisplayMemberPath$ Title��5]   %   +  %Xceed.Wpf.Toolkit.Primitives.Selector   SelectedMemberPath$ Selected��5^      $��34��5_         MaxDropDownHeight$	 150Q�6+   �� 5`   
   -   5         ��Name$ ComboAge��5`      $��8��5a      $��1��6    $ Title��61    �� SelectedValuePath$ Id��5b       �� SelectedItem 5`   &   �� *Age+5b      �� 5d   
   -   5        $ ComboOrganizer��5d      $��9��5e      $��1��6    $ Title��61   $ Id��5f       5d   ,   �� *	Organizer+5f      5h      5i      