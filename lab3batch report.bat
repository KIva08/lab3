@echo off
 
set "report_path=C:\Projects UNI\lab3\Labs\PZ-23-2\Ivaniuk Karina\Report.txt"
 
set "report_content= За допомогою команди mkdir було створено структуру каталогів згідно завдання. За допомогою команди attrib каталог "Прихована папка" було зроблено прихованим. За допомогою команди xcopy було виведено на екран допомогу(список ключів командного рядка для використання цієї функції)За допомогою команди xcopy > спрямовано вивід з консолі до файла copyhelp.txt, який знаходиться в каталозі "Не прихована папка".Створено batch файл, який виконує ті ж самі операції, що прописані вище, але в іншому каталозі."
 
echo %report_content% > "%report_path%"
 
echo The report was successfully created in the path: %report_path%