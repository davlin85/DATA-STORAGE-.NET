   M S B A M L   `   `   `  ����]  YManagement_System_Sql_EFC_Database, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullc6clr-namespace:Management_System_Sql_EFC_Database.Views(Management_System_Sql_EFC_Database.Views  5      7    1Management_System_Sql_EFC_Database.Views.CaseView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Hlocal6clr-namespace:Management_System_Sql_EFC_Database.Views     5      .��5
      � ���#E7E7E7  � RowDefinitions  5   
   �� 5      $��8* �6   �� 5      $
��2.9* �6   .+�5   
   �� $��0 0 0 0q�6   $��0��6&   .+�5      �� $��
View Cases��6   $��24(�6*   $��DemiBold"�68    �� Padding$ 	30 20 0 0q�6N   �� 5      $7��1    - View all the Cases in the Management System��6   $��16(�6Q   $ 	30 0 0 50q�6_   �� 5      $��Cases��6   $��15(�6%   $��DemiBold"�63   $ 30 0 0 0q�6I   �� 5      $!��(sorted by Status and Date)��6   $ 	30 0 0 20q�6;   &   System.Windows.Controls.DataGrid  5      -   5          Name$ datagrid��5         DataGridItemTemplate   RowStyle# �   5         ColumnHeaderStyle# �   6I      
IsReadOnly$
 True��5         AutoGenerateColumns$ false��5       � DataContext$ Wpf.Models.Users��5      $��
30 10 30 0q�5      $��0 0 0 0q�5      ��5      �� *Cases+ �� UpdateSourceTrigger$ PropertyChanged=�	   Columns	 5       0  *System.Windows.Controls.DataGridTextColumn  5!      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Id��5"         MinWidth$ 30Q�5#         Width5  /System.Windows.Controls.DataGridLengthConverter$ 30 5$      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5%      �� *Id+  5&      $
 	Head Line��5'      $	 300Q�5(      $ * 5)         
FontWeight$ DemiBold"�5*       5+      �� *
HeadLine+  5,      $
 Description��5-      $	 480Q�5.      $ * 5/       50      �� *Description+  51      $

 User��52      $	 180Q�53      $	 180 54      $ DemiBold"�55       56      �� *	FirstName+  57      $
 Status��58      $	 100Q�59      $	 100 5:       5;      �� *
StatusName+  5<      $
 Admin��5=      $	 150Q�5>      $	 150 5?      $ DemiBold"�5@       5A      �� *	AdminName+  5B      $

 Date��5C      $	 150Q�5D      $	 100 5E       5F      �� *
DateTime+5H      5I      �� 5K   
   $��0 0 0 0q�6   $��1��6&   ���#E3E1E1.+�5L      �� $��Update and Delete Case��6   $��15(�66   $��DemiBold"�6D   $ 	30 20 0 0q�6Z   �� 5M      $K��E(Fill in all fields to Update Case or Enter Id and click Delete Case)��6   $ 	30 0 0 20q�6e   � 5O      $��5q�6    � ColumnDefinitions 5P      �� 5Q      $��0.45* �6'   �� 5R      $
��0.8* �6'   �� 5S      $
��0.8* �6'   �� 5T      $
��0.8* �6'   �� 5U      $
��0.6* �6'   �� 5V      $
��0.8* �6'   �� 5W      $
��0.5* �6'   �� 5X      $
��0.5* �6'   �� 5Y      $
��0.5* �6'   .+�5\      �� $��50��6   $
��Left=�6'   $��0��6B   $��13(�6R   $��DemiBold"�6`   $��Id��6v   $��30 0 0 0q�6�   �� 5]      $	��160��6   $
��Left=�6(   $��1��6C   $��13(�6S   $��DemiBold"�6a   $��	Head Line��6w   $��0 0 0 0q�6�   �� 5^      $	��160��6   $
��Left=�6(   $��2��6C   $��13(�6S   $��DemiBold"�6a   $��Description��6w   $��0 0 0 0q�6�   �� 5_      $	��160��6   $
��Left=�6(   $��13(�6C   $��DemiBold"�6Q   $
��User��6g   $��30,62,0,-67q�6s   $��2��6�   �� 5`      $	��160��6   $
��Left=�6(   $��2��6C   $��13(�6S   $��DemiBold"�6a   $��Status��6w   $��133,62,0,-67q�6�   $��2��6�   �� 5a      $	��156��6   $
��Left=�6(   $��3��6C   $��13(�6S   $��DemiBold"�6a   $��Admin��6w   $��163,62,0,-67q�6�   $��2��6�   5b      � 5d       5e      �� 5f      $
��115* �6'   �� 5g      $
��204* �6'   �� 5h      $
��204* �6'   �� 5i      $
��204* �6'   �� 5j      $
��153* �6'   �� 5k      $	��37* �6'   �� 5l      $
��167* �6'   �� 5m      $
��127* �6'   �� 5n      $
��127* �6'   �� 5o      $	��18* �6'   �� 5p      $��5* �6'   �� 5q      $
��104* �6'   .+�5u      �� -   5         ��Name$ AddId��5u      $��50��6)   $��4q�64   $��12(�6@   $
��Left=�6N   $��0��6p   .��6�    � 	Resources 5v       �� 
TargetType �� Property �� Value��%^   '��       �� 5w      " ��6    .�5x      ��  �@��CornerRadius$ 5��6=   5y      5z      .��6)   5{      �� 5}      -   5        $ AddHeadLine��5}      $	��160��6/   $��4q�6;   $��	-38 0 0 0q�6G   $��12(�6Z   $
��Left=�6h   $��1��6�   .��6�    5~      ��%^   '��       �� 5      " ��6    .�5�      ��  �@��CornerRadius$ 5��6=   5�      5�      .��6)   5�      �� 5�      -   5        $ AddDescription��5�      $��4q�62   $��3,0,0,0q�6>   $��12(�6O   $
��Left=�6]   $��2��6   $��3��6�   $
��Left=�6�   $	��552��6�   .��6�    5�      ��%^   '��       �� 5�      " ��6    .�5�      ��  �@��CornerRadius$ 5��6=   5�      5�      .��6)   5�      �� 5�      -   5         ��Name$ AddUser��5�      $��center=�6,   $��25��6N   $��32,63,102,-63q�6Z   $��3��6q   �� 5�      -   5        $ 	AddStatus��5�      $��center=�6.   $��25��6P   $��134,63,88,-63q�6\   $��2��6s   $��2��6�   �� 5�      -   5        $ AddAdmin��5�      $��center=�6-   $��25��6O   $��161,64,0,-61q�6[   $��3��6q   $��2��6�   �� 5�      -   5         ��Name$ 	AddChange��5�   ?     RoundCorner#���  6   
�������$��12(�6e   $��Update Case��6s   $��0 5 0 5q�6�   $��
0,63,0,-63q�6�   $��6��6�   $��Center=�6�   $	��130��6�   �� 5�      -	   5        $ 	AddDelete��5�   ?   #���  6   
����������#51AAD0$��DemiBold"�6z   $��12(�6�   $��Delete Case��6�   $��0 5 0 5q�6�   $��10,63,114,-63q�6�   $��7��6�   $��2��6  �� 5�      -
   5        $ AddClear��5�   ?   #���  6   
����������#51AAD0$��DemiBold"�6y   $��12(�6�   $��
Clear Data��6�   $��0 5 0 5q�6�   $��8��6�   $��41,63,83,-63q�6�   $��4��6  5�      5�      5�      5�      