   M S B A M L   `   `   `  ����H  DQuestWorldApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:QuestWorldApp.PagesQuestWorldApp.Pages  5      $    QuestWorldApp.Pages.QuestsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:QuestWorldApp.Pages     5      _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5          N� Title$  Квесты��5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $��40 �6   .+�5   
   � $��0��6   $��Stretch=�6!   .+�5      �� -   5         ��Name$ 
TBoxSearch��5   "   $	��275��6   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$2 ,Введите название квеста��67   6p   �� 5      -   5         ��Name$ ComboOrganizer��5   #   $	��275��6   $��14(�6;   $��3q�6I   $ Организатор��6U    �� DisplayMemberPath$ Title��5      66   �� 5      -   5        $ ComboCategory��5   #   $	��275��6   $��14(�6:   $��3q�6H   $ Категория��6T   $ Title��5      66   �� 5       -   5        $ ComboAge��5    #   $	��275��6   $��14(�65   $��3q�6C   $- 'Возрастная категория��6O   $ Title��5!      67   �� 5%      -   5        $ 	ComboSort��5&      $	��275��5%      $! Сортировать по��6#   $��10 0 0 0q�5'      .@�5(      �� .��5)      ��  �� Orientation$ 
Horizontal=�6!   .+�5*      �� $��Название��6$   '  !MaterialDesignThemes.Wpf.PackIcon  5+         Kind$ SortAscending=�62   $��5 0 0 0q�6G   5,      5-      �� 5.      .��5/      �� $ 
Horizontal=�6!   .+�50      �� $��Название��6$     51      $ SortDescending=�62   $��5 0 0 0q�6H   52      53      �� 54      .��55      �� $ 
Horizontal=�6!   .+�56      �� $��Рейтинг��6$     57      $! SortNumericAscendingVariant=�62   $��5 0 0 0q�6U   58      59      �� 5:      .��5;      �� $ 
Horizontal=�6!   .+�5<      �� $��Рейтинг��6$     5=      $" SortNumericDescendingVariant=�62   $��5 0 0 0q�6V   5>      5?      5@      5B      &   System.Windows.Controls.DataGrid  5C   
   -   5          Name$ DataGridGood��5C      $��1��6)   	   AutoGenerateColumns	 .  
   
IsReadOnly
 .    SelectionMode$ Single=�5F         MaterialDesignDataGrid#���   5G         Columns 5H      4  .System.Windows.Controls.DataGridTemplateColumn  5I      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$	 100 6)      Header$ Фото��65      CellTemplate 5J      �� 5K      .R�5L      �� ��6$   ��  �� Path$ GetPhoto�5M      5O      0  *System.Windows.Controls.DataGridTextColumn  5P      $ Название��6?   $ * 6Q   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6%   �� *Title+6Q     5R      $ Игроков��6H    6%   �� *GetPeopleCount+6H     5S      $ 
Время��6B    6%   �� *
Duration+6B     5U      $
 auto 6)   $! Уровень страха��67    5V      �� 5W      .R�5X      (	  "MaterialDesignThemes.Wpf.RatingBar	   	 Name$ ratingBarFearLevel��68    	  
IsReadOnly . $��Center=�6g    	  Orientation$ Vertical=�6�   
 	  Max 6�   �� *	FearLevel+ 	  Value 6�   �� *	FearLevel+ 	  ValueItemTemplate 5Y   "   �� 5Z   &    �� DataType$ system:Int32��63   .R�5[   *   � .+�5\   .     $��24��6F   $��24��6R   $ SkullCrossbones=�6`   �� 5]   .   $��Center=�68   $��Center=�6V   $��8(�6r      PrimaryHueMidForegroundBrush#���  6�   ��6�   �� 5^   +   5_   '   5a      5b      5d        5f      $
 auto 6)   $ Сложность��67    5g      �� 5h      .R�5i      	  $ ratingBarComplexity��69    . $��Center=�6i   $ Vertical=�6�    6�   �� *
Complexity+ 6�   �� *
Complexity+ 5j   "   �� 5k   &   $ system:Int32��63   .R�5l   *   � .+�5m   .     $��24��6F   $��24��6R   $	 Key=�6`   �� 5n   .   $��Center=�68   $��Center=�6V   $��8(�6r   #���  6�   ��6�   �� 5o   +   5p   '   5r      5s      5u        5w      $ Возраст��6C    6%   �� *	Age.Title+6C     5y      $
 auto 6)   $ Изменить��66    5z      �� 5{      .R�5|      ��  ��Name$ BtnEdit��6%   -   5        $��0q�5|   7   .��5}   "     $
 Edit=�6:   5~      5      5�        5�      $
 auto 6)   $ Расписание��66    5�      �� 5�      .R�5�      �� $ BtnTimeTable��6%   -	   5        $��0q�5�   <   .��5�   "     $ 	Timelapse=�6:   5�      5�      5�      5�      �� 5�   
   $ 
Horizontal=�6   $��2��6.   $��Right=�6;   .+�5�      �� -
   5        $ BtnOrganizers��5�       � ToolTip$ Организаторы��5�   .   .��5�        $ Company=�6+   $��0q�6:   5�      �� 5�      -   5        $ BtnCategories��5�      $' !Категории квестов��5�   .   .��5�        $ FormatListBulletedType=�6+   $��0q�6I   5�      �� 5�      -   5        $ BtnAges��5�      $- 'Возрастные категории��5�      .��5�        $ Numbers=�6+   $��0q�6:   5�      �� 5�      -   5        $ BtnAdd��5�      $��1��6%   $
��Auto��62   $ Добавить��5�   >   ��6   0
  *MaterialDesignThemes.Wpf.PackIconExtension
   
  Kind$	 Add=�6Q   �� 5�      -   5        $ 	BtnDelete��5�      $��1��6(   $
��Auto��65   $��3q�6B   $ Удалить��5�   A   ��6   
  $ Delete=�6A   5�      �� 5�   
   -   5         ��Name$ TextBlockCount��5�   !   $��2��6   $	��300��69   $
��Left=�6E   5�      5�      