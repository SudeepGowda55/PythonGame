import qrcode

qrcodeimg = qrcode.QRCode(version= 1, border= 1, box_size= 20)

qrcodeimg.add_data("Hi purple team")

qrcodeimg.make()

img = qrcodeimg.make_image()
img.save('Team.png')