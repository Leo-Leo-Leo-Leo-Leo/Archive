   M S B A M L   `   `   `  ����I  ETruText_Ledger, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:TruText_LedgerTruText_Ledger  5   	       TruText_Ledger.DBView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:TruText_Ledger     5   	     � Title$  TruText Ledger��5   	   $	��600��6    $	��800��6-   .��5	      �  � ColumnDefinitions 5
   
   �� 5      �� 5      $��0* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgvTableView��5         AutoGenerateColumns . $
��Left=�6D   $	��324��6_   $��
135,52,0,0q�6l   $	��Top=�6�   $	��647��6�   {�.  6�   �� 5   
   -   5         ��Name$ btnCust��5      $��	Customers��6"   $
��Left=�66   $��	135,5,0,0q�6Q   $	��Top=�6d   $	��104��6|   $��40��6�   6�   �� 5   
   -   5        $ btnOrder��5      $��Orders��6#   $
��Left=�64   $��	244,5,0,0q�6O   $	��Top=�6b   $	��104��6z   $��40��6�   6�   �� 5   
   -   5        $ btnBook��5      $��Books��6"   $
��Left=�62   $��	352,5,0,0q�6M   $	��Top=�6`   $	��104��6x   $��40��6�   6�   �� 5   
   -   5        $ btnSupp��5      $��	Suppliers��6"   $
��Left=�66   $��	461,5,0,0q�6Q   $	��Top=�6d   $	��104��6|   $��40��6�   6�   �� 5   
   -   5        $ btnEmpl��5      $��	Employees��6"   $
��Left=�66   $��	569,5,0,0q�6Q   $	��Top=�6d   $	��104��6|   $��40��6�   6�   �� 5   
   -   5        $ btnRole��5      $��Roles��6"   $
��Left=�62   $��	678,5,0,0q�6M   $	��Top=�6`   $	��104��6x   $��40��6�   6�   �� 5   
   -   5        $ 	btnLogout��5      $��Logout��6$   $
��Left=�65   $��10,5,0,0q�6P   $	��Top=�6b   $	��120��6z   $��60��6�   ���	#FFEC3A3A6�   �� 5   
   -	   5        $ btnEdit��5      $��Edit Database��6"   $
��Left=�6:   $	��Top=�6U   $	��120��6m   $��	10,74,0,0q�6y   $��45��6�   6�   �� 5   
   -
   5        $ btnFlt1��5      $��	Most Sold��6"   $
��Left=�66   $��
10,174,0,0q�6Q   $	��Top=�6e   $	��120��6}   $��45��6�   6�   �� 5   
   -   5        $ btnFlt2��5      $��Best Customer��6"   $
��Left=�6:   $��
10,226,0,0q�6U   $	��Top=�6i   $	��120��6�   $��45��6�   6�   �� 5   
   -   5        $ btnFlt3��5      $��
Most Sales��6"   $
��Left=�67   $��
10,278,0,0q�6R   $	��Top=�6f   $	��120��6~   $��45��6�   6�   �� 5   
   -   5        $ btnFlt4��5      $��Most Provided��6"   $
��Left=�6:   $��
10,330,0,0q�6U   $	��Top=�6i   $	��120��6�   $��45��6�   6�   �� 5   
   -   5        $ btnRfsh��5      $��Refresh��6"   $
��Left=�64   $	��Top=�6O   $	��120��6g   $��
10,124,0,0q�6s   $��45��6�   6�   5      5      