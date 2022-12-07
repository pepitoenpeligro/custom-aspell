FROM ubuntu:rolling
# docker build -t custom-aspell .
# docker run -i -v `pwd`:/home/aspell -t custom-aspell
# cat main.tex | aspell --mode=tex --lang=en list
# echo 'hello' | docker run -i -v `pwd`:/home/aspell custom-aspell


## Usage (correct): echo 'hola esto es una prueba' | docker run -e ASPELL_LANG=es ASPELL_MODE=tex -i -v `pwd`:/home/aspell  custom-aspell

LABEL maintainer "Jose Antonio Cordoba <joseant.cg@outlook.com>"

ENV ASPELL_LANG "es" 
ENV ASPELL_MODE "tex"
ENV ASPELL_DICT ""

RUN apt update && \
    apt install -y \
	aspell \
	aspell-en \
    aspell-de \ 
    aspell-ca \
    aspell-eu \ 
    aspell-bg \
    aspell-af \
    aspell-el \
    aspell-da \
    aspell-cs \ 
    aspell-fr \
    aspell-he \
    aspell-hi \
    aspell-hr \
    aspell-hu \
    aspell-hy \
    aspell-id \
    aspell-is \
    aspell-it \
    aspell-ku \
    aspell-lv \
    aspell-nl \
    aspell-no \
    aspell-pl \ 
    aspell-pt \
    aspell-pt-br \
    aspell-pt-pt \
    aspell-ro \
    aspell-ru \
    aspell-sk \
    aspell-sl \ 
    aspell-sv \
    aspell-uk \
    aspell-es 

RUN mkdir /home/aspell 

WORKDIR /home/aspell 

# CMD ["/bin/bash"]

CMD ["sh", "-c", "/usr/bin/aspell --home-dir=/home/aspell  --personal=${ASPELL_DICT} --mode=${ASPELL_MODE} --lang=${ASPELL_LANG} list "]