FROM benzbrake/alpine
MAINTAINER Ryan Lieu <github-benzBrake@woai.ru>

ENV PGY_USERNAME PGY_PASSOWRD
ADD entrypoint.sh /data/
ADD installPGY.sh /data/
RUN \
	set -ex && \
	apk --update --no-cache add bash expect rpm libc6-compat libgcc libstdc++ dpkg && \
	chmod +x /data/*.sh && \
	/data/installPGY.sh && \
	apk del rpm bash dpkg
ENTRYPOINT ["/data/entrypoint.sh"]