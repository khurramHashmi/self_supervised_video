FROM continuumio/miniconda3

WORKDIR /app

# Create the environment:
COPY environment.yml .
COPY src .
RUN conda env create -f environment.yml

# Make RUN commands use the new environment:
SHELL ["conda", "run", "-n", "myenv", "/bin/bash", "-c"]

# The code to run when container is started:
ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "myenv", "python", "retrieve_clips.py", "--help"]
