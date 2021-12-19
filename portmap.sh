upnpc -d 80 TCP
upnpc -d 5500 TCP
upnpc -d 4567 TCP
upnpc -d 25565 TCP
upnpc -d 25565 UDP
upnpc -a 10.0.0.77 3000 80 TCP
upnpc -a 10.0.0.77 5500 5500 TCP
upnpc -a 10.0.0.77 4567 4567 TCP
upnpc -a 10.0.0.77 25565 25565 TCP
upnpc -a 10.0.0.77 25565 25565 UDP
upnpc -l
sleep(5)
