while [ 1 ]
do
	rm /tmp/link
	ln -s /home/user/level10/level10 /tmp/link
	./level10 /tmp/link 127.0.0.1 &
	rm /tmp/link
	ln -s /home/user/level10/level10 /tmp/link
done
