   M S B A M L   `   `   `  ����]  YManagement_System_Sql_EFC_Database, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullc6clr-namespace:Management_System_Sql_EFC_Database.Views(Management_System_Sql_EFC_Database.Views  5      ?    9Management_System_Sql_EFC_Database.Views.CaseRegisterView   5      W SPresentationCore, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Hlocal6clr-namespace:Management_System_Sql_EFC_Database.Views     5      .��5
      � ���#E7E7E7  � ColumnDefinitions  5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��Register Case��6   $��24(�6)   $��DemiBold"�67    �� Padding$ 
30 20 0 50q�6M   �� 5   
   $8��2    - Register a new Case to the Management System��6   $��16(�6N   $ 
30 50 0 40q�6\   �� 5   
   $��0��6   $��30 120 0 10q�6%   .+�5      �� $��	Head Line��6   $��13(�6(   $��DemiBold"�66   �� 5      -   5         ��Name$ AddHeadLine��5      $��8q�6+   $��0 0 0 10q�67   $��13(�6I   $
��Left=�6W   .��6z    � 	Resources 5       �� 
TargetType �� Property �� Value��%^   '��       �� 5      " ��6   .�5      ��  �@��CornerRadius$ 5��69   5      5      .��6%   5      �� 5      $��Description��6   $��13(�6*   $��DemiBold"�68   �� 5!      -   5        $ AddDescription��5!      $��8q�6.   $��0 0 0 10q�6:    �� TextWrapping$
 Wrap=�6L   $	��100��6`   $��13(�6m   $
��Left=�6{   .��6�    5"      ��%^   '��       �� 5#      " ��6   .�5$      ��  �@��CornerRadius$ 5��69   5%      5&      .��6%   5'      �� 5)      $
��User��6   $��13(�6#   $��DemiBold"�61   �� 5*      -   5         ��Name$ AddUser��5*      $��center=�6(   $��30��6J   $��
0 0 100 10q�6V   �� 5,      $��Status��6   $��13(�6%   $��DemiBold"�63   �� 5-      -   5        $ 	AddStatus��5-      $��center=�6*   $��30��6L   $��
0 0 100 10q�6X   �� 5/      $��Admin��6   $��13(�6$   $��DemiBold"�62   �� 50      -   5        $ AddAdmin��50      $��center=�6)   $��30��6K   $��
0 0 100 50q�6W   �� 52      -   5        	 ��Name$	 	AddSubmit��52   ;      RoundCorner#���   6   
����������#51AAD0$��DemiBold"�6v   $��14(�6�   $��Register Case��6�   $��	0 15 0 15q�6�   $��	0 0 320 0q�6�   6�   55      �� 57   
   $��1��6   $��30 120 0 10q�6%   .+�5;      �� -   5        
 ��Name$
 AddError��5;      
���  ��$��14(�6;   $��	20 40 0 0q�6I   $
��Left=�6\   �� 5<      -   5        $
 	AddSucess��5<      
��� d �$��14(�6>   $��
20 -29 0 0q�6L   $
��Left=�6`   5=      �� 5?   
   $��2��6   $��30 120 0 10q�6%   5A      5C      5D      