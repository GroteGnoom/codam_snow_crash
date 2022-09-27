#!/usr/bin/env lua

function hash(pass)
	print("lala"..pass.."lala")
  prog = io.popen("echo "..pass.." | sha1sum", "r")
  data = prog:read("*all")
  prog:close()

  data = string.sub(data, 1, 40)

  return data
end

print("arg:")
print(arg[1])
a = hash(arg[1])
print(a)
