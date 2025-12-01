import qrcode

url_en = "https://theguega.github.io/personal/resume/Theo_Guegan_Resume.pdf"
url_fr = "https://theguega.github.io/personal/resume/Theo_Guegan_CV.pdf"

im1 = qrcode.make(url_en)
im2 = qrcode.make(url_fr)

im1.save("qr_en.png")
im2.save("qr_fr.png")
