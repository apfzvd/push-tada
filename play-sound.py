import vlc
import time

p = vlc.MediaPlayer("./lulala.mp3")

p.play()
time.sleep(2)
p.stop()
