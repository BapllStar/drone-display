import time
from pynput import keyboard
import pyperclip
import pyautogui

# Define the duration for the script to wait between Alt+Tab operations
alt_tab_wait_duration = 0.1

# Define the duration for the script to wait after pasting
paste_wait_duration = 0.1

# Create a variable to track whether the F3 key is being held
f3_pressed = False

# Function to simulate the Alt+Tab key combination
def alt_tab():
    pyautogui.keyDown("alt")
    pyautogui.press("tab")
    pyautogui.keyUp("alt")

# Function to handle the key events
def on_key_press(key):
    global f3_pressed

    if key == keyboard.Key.f3:
        f3_pressed = True

    if f3_pressed and key == keyboard.KeyCode.from_char("c"):
        alt_tab()
        time.sleep(alt_tab_wait_duration)
        clipboard_text = pyperclip.paste()
        pyautogui.hotkey("ctrl", "v", "enter")
        time.sleep(paste_wait_duration)
        alt_tab()
        time.sleep(alt_tab_wait_duration)

# Function to handle key release events
def on_key_release(key):
    global f3_pressed

    if key == keyboard.Key.f3:
        f3_pressed = False

# Create the keyboard listener
listener = keyboard.Listener(on_press=on_key_press, on_release=on_key_release)

# Start listening for key events
listener.start()

# Keep the script running indefinitely
while True:
    time.sleep(1)  # Add a short delay to avoid high CPU usage

# Stop the listener (will not reach this point)
listener.stop()
