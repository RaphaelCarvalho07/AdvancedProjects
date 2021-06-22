FROM fedora:31

VOLUME /opt/robotframework/results
VOLUME /opt/robotframework/tests

RUN cat /etc/*-release
RUN dnf upgrade -y >/dev/null && echo OK
RUN dnf install -y python37 >/dev/null && echo OK
RUN dnf install -y fedora-workstation-repositories >/dev/null && echo OK
RUN dnf install -y 'dnf-command(config-manager)' >/dev/null && echo OK
RUN dnf config-manager --set-enabled google-chrome >/dev/null && echo OK
RUN dnf install -y google-chrome-stable >/dev/null && echo OK
RUN pip3 install webdrivermanager >/dev/null && echo OK
RUN webdrivermanager chrome >/dev/null && echo OK
RUN pip3 install robotframework robotframework-seleniumlibrary | grep "Successfully installed"
RUN python --version
RUN google-chrome --version
RUN chromedriver --version