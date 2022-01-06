set "source=C:\Users\Win732bit1\Documents\ThuMucDungChung"
set "destination=C:\Users\Win732bit1\Desktop"
robocopy "%source%" "%destination%" /mov


openssl rsautl -decrypt -inkey Hostprivate_key.pem -in key.bin.enc -out key.bin
Del key.bin.enc



openssl enc -d -aes-256-cbc -in Data.7z.enc -out Data.7z -pass file:./key.bin



Del Data.7z.enc
Del key.bin


"C:\Program Files\7-Zip\7z.exe" e -y C:\Users\Win732bit1\Desktop\*.7z -oC:\Users\Win732bit1\Desktop\Data\ 
Del Data.7z
