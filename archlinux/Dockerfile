FROM archlinux:latest
ARG USER_NAME=user
ARG USER_ID=1000
RUN \
    pacman -Syu --noconfirm &&\
    pacman -S --noconfirm \
        sudo \
        sed \
        vim \
        openssh \
        base-devel \
        git &&\
    yes | pacman -Scc
RUN \
    useradd -l -u ${USER_ID} -G wheel -md /home/${USER_NAME} -s /bin/bash -p ${USER_NAME} ${USER_NAME} &&\
    echo "%wheel ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN \
    /usr/bin/sed -i 's|#Color|Color|g' /etc/pacman.conf &&\
    /usr/bin/sed -i 's|NoProgressBar|#NoProgressBar|g' /etc/pacman.conf &&\
    echo "Server = https://mirror.sjtu.edu.cn/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist
USER ${USER_NAME}
WORKDIR /home/${USER_NAME}
RUN \
    cd /home/${USER_NAME} &&\
    git clone https://aur.archlinux.org/yay-bin.git &&\
    cd yay-bin &&\
    yes | makepkg -si &&\
    yes | sudo pacman -Scc &&\
    rm -rf /var/cache/pacman/pkg/*
