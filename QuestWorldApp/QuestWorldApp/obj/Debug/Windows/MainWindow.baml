   M S B A M L   `   `   `  ����H  DQuestWorldApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:QuestWorldAppQuestWorldApp  5   	       QuestWorldApp.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:QuestWorldApp     5   	   _ [MaterialDesignThemes.Wpf, Version=4.9.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -   5        $	��450��5   	   $	��800��6     � WindowStartupLocation$  CenterScreen=�5   !    � Title 5	      ��  �� ElementName$ 	MainFrame�� �� Path$ Content.Title�.��5      �  � RowDefinitions 5   
   �� 5      $��75 �6   �� 5      $��* �6   �� 5      $��30 �6   .+�5   
   � (  "MaterialDesignThemes.Wpf.ColorZone  5   
   $��16q�6&   
���   �}�.  
�������   Mode$ Custom=�5      .��5      ]� .+�5      ��  �� Orientation$ 
Horizontal=�6!   $
��Left=�6:   $
��Left=�6P   .+�5      �� $6��0/QuestWorldApp;component/Resources/logoquest.png��6   $
��Left=�5      $��55��6+   $��63��67   �� 5      $
��16,0q�6&   $��Center=�6:   $��МИР КВЕСТОВ��6W    $   MaterialDesignHeadline5TextBlock#��[  6j   �� 5      -   5         ��Name$ 	BtnQuests��5       � ToolTip$ Квесты��5         MaterialDesignFlatButton#��[ 6.   $y�	Collapsed=�5!   V   ��6   0  *MaterialDesignThemes.Wpf.PackIconExtension  	   Kind$	 Puzzle=�
   Size$
 24X�6V   �� 5#      -   5        $ 
BtnBooking��5#      $y�	Collapsed=�6K   $- 'Бронирование квестов��5$      #��[ 6<   ��5%        $	 BookAccount=�$
 24X��� 5(      -   5        $ BtnUsers��5(      $ Пользователи��6G   #��[ 5)      $y�	Collapsed=�6P   ��5*        $	 People=�$
 24X��� 5,      -   5        $ BtnMyrewiew��5,      $y�	Collapsed=�6M   $ Мои отзывы��5-      #��[ 5.      ��5/        $	 MessageDraw=�$
 24X��� 52      -   5        $ BtnAllRewiew��52      $y�	Collapsed=�6O   $ Отзывы��53      #��[ 54      ��55        $	 MessageDraw=�$
 24X��� 57      -   5        $ BtnMyBooking��57      $y�	Collapsed=�6N   $ Мои квесты��58      #��[ 59      ��5:        $
	 Book=�$
 24X��� 5=      -   5        $ BtnBack��5=      $ 
Назад��6D   $y�	Collapsed=�6U   #��[ 6l   ��5>        $	 	ArrowBack=�$
 24X�5A      �� 5B      $��Right=�6   $ 
Horizontal=�64   $��Right=�6M   .+�5C      �� -	   5        $ BtnMyAccount��5C      $ Мой профиль��6O   #��[ 5D      $y�	Collapsed=�6P   ��5E        $	 Account=�$
 24X��� 5G      -
   5         ��Name$ TextBlockUser��5G       $��Center=�67    $  MaterialDesignHeadline6TextBlock#��[ 6R   �� 5H      -   5        $ BtnEnter��5H      $ 
Войти��5I      #��[ 6-   $��60��5J      .��5K      '  !MaterialDesignThemes.Wpf.PackIcon  -   5          Name$ 
IconBtnKey��5K   2      Kind$ Login=�6G   $��0q�6T   5L      5M      5N      5O       � 5R   
   -   5          �Name$ 	MainFrame��5R      $��1��6#     � NavigationUIVisibility$ Hidden=�5S      $��1q�5T      6$   �� 5j   
   $��2��6      MaterialDesignDarkBackground#��[ 6!   5l      5m      