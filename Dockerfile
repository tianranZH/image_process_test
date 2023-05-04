FROM python

RUN \
    # Retrieve new lists of packages
    apt-get update && \
    # Install the required packages
    apt-get install --assume-yes --no-install-recommends \
        python3 \ 
        python3-pip \
        python3-dev 

# Set environment variable `LANG`
ENV LANG en_US.UTF-8

COPY requirements.txt .

# install dependencies
RUN pip install --user -r requirements.txt