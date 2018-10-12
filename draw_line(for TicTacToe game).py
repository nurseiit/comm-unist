import pygame, os
from pygame.locals import *

# Constants

SIZE = WIDTH, HEIGHT = 450, 300

CELL_SIZE = CELL_WIDTH, CELL_HEIGHT = WIDTH // 3, HEIGHT // 3

COLOR = (255, 255, 255)  # white line


def draw_line(screen):
    # (object, color_code, start point, end point, thickness of line)

    for i in range(1, 3):  # draw 2 row lines

        pygame.draw.line(screen, COLOR, (0, CELL_HEIGHT * i), (WIDTH, CELL_HEIGHT * i), (1))

    for i in range(1, 3):  # draw 2 column lines

        pygame.draw.line(screen, COLOR, (CELL_WIDTH * i, 0), (CELL_WIDTH * i, HEIGHT), (1))

    pygame.display.update()

    return screen


def wait():
    while True:

        for event in pygame.event.get():

            if event.type == MOUSEBUTTONDOWN:
                pygame.quit()


def setup():

    pygame.init()  # Initialize pygame

    screen = pygame.display.set_mode(SIZE)  # Set screen with size

    return screen


def start_game():
    # Initialize map by 3x3 matrix with a blank(" ")

    map = []

    for i in range(3):
        map.append([" ", " ", " "])

    screen = setup()  # Set up the screen

    screen = draw_line(screen)  # Draw 4 dividing lines.

    wait()  # Wait for click and close this program


# If this program is not imported by other program, start the game automatically

if __name__ == '__main__':
    start_game()
