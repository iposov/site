print("Hello from pycharm")

# Предупреждения, ошибки
# print("hello"  # забыта скобка в конце
# красный цвет выделяет ошибки. Программа с ошибками не компилируется.
# Справа сверху в редакторе список всех ошибок (и предупреждений)
# На него можно либо нажать, либо только подвести к нему мышь
# Если подвести мышь к ошибке в коде и подождать, появится информация
# об ошибке. Если поставить курсор на ошибку, то в самом низу тоже
# появится информация об ошибке.

# Предупреждения. Это потенциальные проблемы в программе. Они не мешают
# компилироваться, но вероятно приведут к ошибке во время работы
# программы. Оформляются предупреждения самыми разными способами
# разные цвета фона, текста, подчеркивания

# строки и числа не складываются
s = 1 + "abc"

# переопределили переменную s без использования первого значения.
s = 'x'
# точно истинное утверждение, но pycharm
# почему-то не подсвечивает
if s != 'x' or s != 'y':
    print(s)

# Обязательно проверяйте и реагируйте на все предупреждения.
# Очень часто эти предупреждения помогают найти ошибку в логике
# программы.

# Намеренья (intentions)
x = 1
if x == 1:  # нажать лампочку или Alt+Enter (знать это сочетание!)
    print("один")
else:
    print("не один")
# перевернуть if-else, поменять местами x == y, y == x
# Намеренья часто очень полезны в тех местах, где есть предупреждение

