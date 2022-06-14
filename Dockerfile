FROM bids/freesurfer:latest

COPY ["ctp-signature.py", "/ctp-signature.py"]
COPY ["run.sh", "/run.sh"]

RUN chmod +x /ctp-signature.py
RUN chmod +x /run.sh

COPY ["version", "/ctp-version"]

ENTRYPOINT ["/neurodocker/startup.sh", "/run.sh"]