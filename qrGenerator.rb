require 'rqrcode'

qrCode = RQRCode::QRCode.new("hello wolrd")

png = qrCode.as_png(
    color: "black",
    fill: "white",
    size: 300
)

IO.binwrite("teste.png", png.to_s)