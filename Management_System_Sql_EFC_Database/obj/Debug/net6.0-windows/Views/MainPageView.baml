   M S B A M L   `   `   `  ����]  YManagement_System_Sql_EFC_Database, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullc6clr-namespace:Management_System_Sql_EFC_Database.Views(Management_System_Sql_EFC_Database.Views  5      ;    5Management_System_Sql_EFC_Database.Views.MainPageView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Hlocal6clr-namespace:Management_System_Sql_EFC_Database.Views     5      .��5
      � ���#E7E7E7  � RowDefinitions  5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��0 0 0 0q�6   $��0��6&   .+�5      �  � ColumnDefinitions 5      �� 5      �� 5      5      �� 5      $"��Welcome to Management System��6   $��24(�6<   $��DemiBold"�6J    �� Padding$ 	30 20 0 0q�6`   �� 5      $+��%    - View the latest Users and Cases��6   $��16(�6E   $ 	30 0 0 50q�6S   �� 5      $��10 latest Users��6   $��15(�6/   $��DemiBold"�6=   $ 30 0 0 0q�6S   �� 5      $��(sorted by Id)��6   $ 	30 0 0 20q�6.   &   System.Windows.Controls.DataGrid  5      -   5          Name$ 	datagrid2��5          DataGridItemTemplate   RowStyle# �   5         ColumnHeaderStyle# �   6I      
IsReadOnly$
 True��5!         AutoGenerateColumns$ False��5"      $��
30 10 30 0q�5$      $��0 0 0 0q�5%      ��5#      �� *Users+ �� UpdateSourceTrigger$ PropertyChanged=�	   Columns	 5&      0  *System.Windows.Controls.DataGridTextColumn  5'      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Id��5(         MinWidth$ 30Q�5)         Width5  /System.Windows.Controls.DataGridLengthConverter$ 30 5*      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5+      �� *Id+  5,      $
 
First Name��5-      $	 150Q�5.      $ * 5/         
FontWeight$ DemiBold"�50       51      �� *	FirstName+  52      $
 	Last Name��53      $	 150Q�54      $ * 55      $ DemiBold"�56       57      �� *
LastName+  58      $
 Email��59      $	 250Q�5:      $ * 5;       5<      �� *Email+  5=      $
 Phone Number��5>      $	 150Q�5?      $ * 5@       5A      �� *PhoneNumber+  5B      $	 600Q�5C      $	 600 5D      5F      5I      �� 5L   
   $��1��6   $��0 50 0 0q�6"   .+�5M      �  5N      �� 5O      �� 5P      5S      �� 5U      $��10 latest Cases��6   $��15(�6/   $��DemiBold"�6=   $ 	30 10 0 0q�6S   �� 5V      $!��(sorted by Status and Date)��6   $ 	30 0 0 20q�6;     5X      -   5        $ 	datagrid1��5Y      # �   5X      # �   6I   $
 True��5Z      $ False��5[      $��
30 10 30 0q�5]      $��0 0 0 0q�5^      ��5\      �� *Cases+$ PropertyChanged=�	 5_        5`      $
 Id��5a      $ 30Q�5b      $ 30 5c       5d      �� *Id+  5e      $
 	Head Line��5f      $	 300Q�5g      $ * 5h      $ DemiBold"�5i       5j      �� *
HeadLine+  5k      $
 Description��5l      $	 480Q�5m      $ * 5n       5o      �� *Description+  5p      $

 User��5q      $	 180Q�5r      $	 180 5s      $ DemiBold"�5t       5u      �� *	FirstName+  5v      $
 Status��5w      $	 100Q�5x      $	 100 5y       5z      �� *
StatusName+  5{      $
 Admin��5|      $	 150Q�5}      $	 150 5~      $ DemiBold"�5       5�      �� *	AdminName+  5�      $

 Date��5�      $	 150Q�5�      $	 100 5�       5�      �� *
DateTime+5�      5�      5�      5�      