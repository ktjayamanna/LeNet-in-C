# Use an official Ubuntu as the base image
FROM ubuntu:latest

# Set the working directory in the container
WORKDIR /code

# Install system dependencies
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    zlib1g-dev \
    wget \
    curl \
    git \
    tree \
    bash-completion  # Install bash-completion

# Enable bash completion in the shell
RUN echo "source /etc/profile.d/bash_completion.sh" >> ~/.bashrc && \
    echo "source /usr/share/bash-completion/bash_completion" >> ~/.bashrc

# Copy your source code into the container
COPY . /code

# Set the default shell to bash with autocompletion enabled
SHELL ["/bin/bash", "-c"]

# Set git to allow safe directory
RUN git config --global --add safe.directory /code

# # Compile the C program
# RUN gcc example.c -o example -lz -lm

# # Set the default command to run your program
# CMD ["./example"]
