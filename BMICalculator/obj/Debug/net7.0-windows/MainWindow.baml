   M S B A M L   `   `   `  ����H  DBMICalculator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:BMICalculatorBMICalculator  5   	       BMICalculator.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:BMICalculator     5   	     � WindowState$  Normal=�5   	    � 
ResizeMode$ NoResize=�5	   	    � Title$	 BMI��5   	   $	��450��6   $	��600��6"   .��5      �  � RowDefinitions 5   
   �� 5      $��70 �6   �� 5      $��* �6   .+�5   
   �� $��BMI Calculator��6   $��36(�5      $��10q�5      $
��Bold"�5      
��� � �5      �� 5   
   $��0��6   $��1��6%   $��5q�62   
�������.+�5      �� $��Metric Units��6   $��Center=�5      $��24(�5      $��DemiBold"�5      
�������$��5,5,0,0q�5      $	��140��5      �� 5       $
��Age:��6   $��18(�6$   $��5,10,0,0q�62   �� 5!      $��-80,-20,0,0q�6   $��50��6+   ��66   �� *Age+�� 5#      $��2-120��6   $��18(�6%   $��150,-25,0,0q�63   �� 5$      $��Gender��6   $��18(�6&   $��5,12,0,0q�64   �� 5%       �� Orientation$ 
Horizontal=�6   .+�5&      �� $
��Male��6   $��5q�6*   $��18(�65    d� 	IsChecked 6C   �� *IsMale+�� 5'      $��Female��6   $��5q�6,   $��18(�67    6E   �� *
IsFemale+5(      �� 5)      $��Height (cm): ��6   $��18(�6-   $��5,10,0,0q�6;   �� 5*      $	��100��6   $��
50,-20,0,0q�6"   ��66   �� *Height+�� 5+      $��Weight (kg):��6   $��18(�6,   $��5,12,0,0q�6:   �� 5,      $	��100��6   $��
50,-20,0,0q�6"   ��66   �� *Weight+�� 5.      $��	Calculate��6   
���"�"�$��60��50      $��	15,20,0,0q�51      $
��Bold"�52      ��53      �� *CalculateCommand+�� 55      $��Clear��6   $��40��56      $
��Bold"�57      
��� E��$��150,-20,0,0q�59      ��5:      �� *ClearCommand+5=      �� 5>   
   $��1��6   $��1��5?      $��Bottom=�5@      $��5q�5A      .+�5C      �� $.��(Healthy BMI range: 18.5 kg/m2 - 25 kg/m2��6   �� 5D      $8��2Healthy weight for the height: 59.9 kgs - 81.0 kgs��6   �� 5E      $��BMI Prime: 0.8��6   �� 5F      $ ��Ponderal Index: 11.1 kg/m3��6   �� 5G      $	��Top=�6   $��Result��60   5H      �� 5I   
   $��1��6   $��1��6"   $	��Top=�62   .+�5K      �� $��Result��6   $��Center=�5L      
�������$��5,0,0,0q�5M   2   $	��300��6C   �� 5N      $	��300��6   $	��200��5O      $��5,5,0,0q�5P      
���������5R      �� *CalculateBMI+5S      �� 5T   
   $��Print��6   $��1��6!   $��50��61   $��30��6<   $��Right=�6H    � ColumnDefinitions 5U   
   �� 5V      $
��auto �6   �� 5W      $
��auto �6   5^      5_      