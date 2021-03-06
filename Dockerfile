FROM debian:9
RUN apt-get update && apt-get install -y gnupg wget && echo 'deb http://dl.google.com/linux/chrome/deb/ stable main'>> /etc/apt/sources.list && wget https://dl-ssl.google.com/linux/linux_signing_key.pub && apt-key add linux_signing_key.pub && rm linux_signing_key.pub && apt-get update &&\
apt-get install -y gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget curl unzip socat chromium chromium-l10n fonts-arphic-ukai fonts-arphic-uming procps
ADD docker-entrypoint.sh /docker-entrypoint.sh
CMD bash /docker-entrypoint.sh
