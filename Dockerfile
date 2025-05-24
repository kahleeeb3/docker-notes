# Full desktop version of ROS Humble 
FROM osrf/ros:humble-desktop-full

# Create a non-root user
ARG USERNAME=carv
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Add user to group
RUN groupadd --gid $USER_GID $USERNAME \
    # add home directory
    && useradd -s /bin/bash --uid $USER_UID --gid $USER_GID -m $USERNAME \
    # add config directory (some programs expect this to exist)
    && mkdir /home/$USERNAME/.config && chown $USER_UID:$USER_GID /home/$USERNAME/.config \
    # make a desktop directory to store code in
    && mkdir /home/$USERNAME/Desktop && chown $USER_UID:$USER_GID /home/$USERNAME/Desktop