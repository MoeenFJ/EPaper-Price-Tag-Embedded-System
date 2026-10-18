import pygame
import sys
import threading
import os
import queue

PIPE_PATH = "/tmp/spi_display_pipe"
WIDTH = 296
HEIGHT = 152
SCALE = 3 

COLOR_BLACK = (0, 0, 0)
COLOR_WHITE = (255, 255, 255)

def ipc_listener(pixel_queue):

    try:

        with open(PIPE_PATH, 'r') as pipe:
            for line in pipe:
                parts = line.strip().split(',')
                if len(parts) == 1:
                    if parts[0] == "clear":
                        pixel_queue.put((-1, -1, -1))
                if len(parts) == 3:
                    x = int(parts[0], 16)
                    y = int(parts[1], 16)
                    val = int(parts[2], 16)
                    color = COLOR_WHITE if val == 0x00 else COLOR_BLACK
                    pixel_queue.put((x, y, color))
    except FileNotFoundError:
        print("Pipe not found")
        exit()

def main():
    pygame.init()
    screen = pygame.display.set_mode((WIDTH * SCALE, HEIGHT * SCALE))
    pygame.display.set_caption("E-Ink Emulator")

    raw_surface = pygame.Surface((WIDTH, HEIGHT))
    raw_surface.fill(COLOR_WHITE) # Default background

    pixel_queue = queue.Queue()

    listener_thread = threading.Thread(target=ipc_listener, args=(pixel_queue,), daemon=True)
    listener_thread.start()

    clock = pygame.time.Clock()
    running = True

    while running:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False


        
        if not pixel_queue.empty():
            try:
                x, y, color = pixel_queue.get_nowait()
                if x==-1 and y==-1 and color == -1:
                    raw_surface.fill(COLOR_WHITE) 
                if x < WIDTH and y < HEIGHT:
                    raw_surface.set_at((x, y), color)
            except queue.Empty:
                pass

        pygame.transform.scale(raw_surface, (WIDTH * SCALE, HEIGHT * SCALE), screen)
        pygame.display.flip()
        
        clock.tick(120)

    pygame.quit()
    sys.exit()

if __name__ == "__main__":
    main()