FROM thehiveproject/cortex:latest

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the default Python version
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1


# Install Git
RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Clone the Git repository
WORKDIR /opt/
RUN git clone https://github.com/TheHive-Project/Cortex-Analyzers.git

# Copy your custom shuffle.py into the correct location
COPY ./shuffle.py /opt/Cortex-Analyzers/responders/Shuffle/shuffle.py

# Grant execute permission to the shuffle.py script
RUN chmod +x /opt/Cortex-Analyzers/responders/Shuffle/shuffle.py
# Install dependencies
RUN pip install -r /opt/Cortex-Analyzers/analyzers/MISP/requirements.txt
## HERE ADD ALL THE OTHER ANALYZERS WE WANT TO USE
# Install Python 2 dependencies for Cortex-Analyzers
#RUN for I in $(find Cortex-Analyzers -name 'requirements.txt'); do \
#        pip install -r $I; \
#    done

WORKDIR /opt/cortex
