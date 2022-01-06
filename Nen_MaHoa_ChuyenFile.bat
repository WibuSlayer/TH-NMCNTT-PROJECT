7z.exe a -tzip Data.7z C:\Users\Win732bit1\Desktop\Data\*


openssl rand -base64 32 > key.bin

openssl enc -aes-256-cbc -salt -in Data.7z -out "C:\Users\Win732bit1\Documents\ThuMucDungChung\data.7z.enc" -pass file:./key.bin
openssl rsautl -encrypt -inkey Guestpublic_key.pem -pubin -in key.bin -out "C:\Users\Win732bit1\Documents\ThuMucDungChung\key.bin.enc"
Del key.bin
Del Data.7z



set "source=C:\Users\Win732bit1\Documents\ThuMucDungChung"
set "destination=Z:"
robocopy "%source%" "%destination%" /mov

exit /b
