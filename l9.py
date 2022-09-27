with open("token", "rb") as f:
    x = 0;
    while (byte := f.read(1)):
        print(chr(ord(byte) - x), end="")
        x += 1
