# we want to make a GUI for PageGen.sh 
import tkinter as ui
import os
import subprocess
# let's begin by defining the introduction window 
def intro():
    print("Welcome to PageGen!")
    print("This program will generate a webpage from a text file.")
    print("Please enter the name of the text file you would like to use.")
    print("The file must be in the same directory as this program.")
    print("The program will then generate a webpage from the text file.")
    print("Please enter the name of the webpage you would like to create.")
# now, let's define the main window
def main():
    window = ui.Tk()
    window.title("PageGen")
    window.geometry("400x400")
    window.configure(background="white")
    # let's define the introduction window
    intro()
    # let's define the text box
    textbox = ui.Entry(window, width=30)
    textbox.grid(column=0, row=0)
    # let's define the button
    button = ui.Button(window, text="Generate My Page", command=lambda: generate(textbox.get()))
    button.grid(column=1, row=0)
    # let's define the first label
    label = ui.Label(window, text="Please enter the name of the text file you would like to use.")
    label.grid(column=0, row=1)
    # let's define the second label
    label2 = ui.Label(window, text="The file must be in the same directory as PageGen.")
    label2.grid(column=0, row=2)
    # let's define the third label
    label3 = ui.Label(window, text="The program will then generate a webpage from the text file.")
    label3.grid(column=0, row=3)
    # let's define the fourth label
    label4 = ui.Label(window, text="Please enter the name of the webpage you would like to create.")
    label4.grid(column=0, row=4)
    # let's define the fifth label
    label5 = ui.Label(window, text="The webpage will be saved in the same directory as PageGen.")
    label5.grid(column=0, row=5)
    # close the window 
    window.mainloop()
# let's define the generate function
def generate(text):
    # let's define the text file
    textfile = text
    # let's define the webpage
    webpage = textfile + ".html"
    # let's define the command
    command = "./PageGen.sh " + textfile + " " + webpage
    # let's run the command
    subprocess.call(command, shell=True)
    # let's open the webpage
    os.system("xdg-open " + webpage)
# let's run the main function
main()
# let's close the window
window.destroy()
