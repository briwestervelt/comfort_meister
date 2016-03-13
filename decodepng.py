from qrtools import QR
myCode = QR(filename=u"/home/chris/destination.png")
if myCode.decode():
	print myCode.data
	print myCode.data_type
	print myCode.data_to_string()
#else:
	#print("Cannot read image")
