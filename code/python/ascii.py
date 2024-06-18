import random
import time

# Define a list of ASCII art pieces
ascii_art = [
    r"""
      (\____/)
      / @__@ \
     (  (oo)  )
      `-.~~.-'
       /    \
     @/      \_
    (/ /    \ \)
     WW`----'WW
    """,
    r"""
      .-"-.
     /|6 6|\
    {/(_0_)\}
     _/ ^ \_
    (/ /^\ \)-'
     """
]

def display_random_art(art_list, iterations):
    for _ in range(iterations):
        selected_art = random.choice(art_list)
        print(selected_art)
        time.sleep(1)  # Add a delay of 1 second between each art piece

# Call the function to display random ASCII art 5 times
display_random_art(ascii_art, 5)
