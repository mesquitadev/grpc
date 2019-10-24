import sys

from PIL import Image
import PySimpleGUI as sg
import cv2
import io

def main():
    sg.ChangeLookAndFeel('LightGreen')
    # Define layout properties
    layout = [
                [sg.Text('EyeOS Demo', size=(40, 1), justification='center', font='Helvetica 20')],
                [sg.Image(filename='', key='image')],
                [sg.ReadButton('Exit', size=(10, 1), pad=((200, 0), 3), font='Helvetica 14'),
                 sg.RButton('About', size=(10, 1), font='Any, 14')]
             ]

    # Create The Window
    window = sg.Window('Testing', location=(800, 400)).Layout(layout)
    window._ReadNonBlocking()

    cap = cv2.VideoCapture(0)

    while True:
        # Read the window

        button, values = window._ReadNonBlocking()

        if button is 'Exit' or values is None:
            sys.exit(0)
        elif button == 'About':
            sg.PopupNoWait('Made by EyeTech', keep_on_top=True)
        ret, frame = cap.read()

        gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)

        img = Image.fromarray(gray)
        bio = io.BytesIO()
        img.save(bio, format='PNG')
        imgBytes = bio.getvalue()
        window.FindElement('image').Update(data=imgBytes)

if __name__ == '__main__':
    main()