SRC = src.txt
DST = dst.txt

$(DST): $(SRC)
	cp $(SRC) $(DST)