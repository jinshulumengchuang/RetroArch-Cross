FROM debian
COPY root /
RUN apt update ; apt install xdotool dbus-x11 xorg openbox busybox fonts-wqy-zenhei npm locales fuse pulseaudio -y ;  dpkg -i /a/kasm.deb ; apt -f install -y ; apt clean
RUN  useradd user ; mkdir /home/user  ; echo 'user:user' | chpasswd
RUN adduser user ssl-cert; adduser user pulse ; adduser user pulse-access ; mkdir -p /home/user/.vnc  ; touch /home/user/.vnc/.de-was-selected ; cp -f /a/kasmvnc.yaml  /home/user/.vnc/
RUN chown user:user /a -R ; chown user:user /home/user -R ; chmod 755 /1.sh ; chmod 755 /run.sh
CMD ["/run.sh"]
