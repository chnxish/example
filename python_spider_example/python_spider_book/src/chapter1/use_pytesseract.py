from PIL import Image
import pytesseract

def main():
    image = Image.open('../resources/python3webspider.png')
    print(pytesseract.image_to_string(image))

if __name__ == '__main__':
    main()
