FROM 361115997/home:mysql5.6
MAINTAINER yejm@asiainfo.com
# Mkdir Dir
RUN mkdir -p /veris/mysql/3306/data && \
    mkdir -p /veris/mysql/3306/etc && \
    mkdir -p /veris/mysql/3306/innodb && \
    mkdir -p /veris/mysql/3306/innodb/log && \
    mkdir -p /veris/mysql/3306/proc && \
    mkdir -p /veris/mysql/3306/log && \
    mkdir -p /veris/mysql/3306/log/audit && \
    mkdir -p /veris/mysql/3306/log/binlog && \
    mkdir -p /veris/mysql/3306/log/error && \
    mkdir -p /veris/mysql/3306/log/general && \
    mkdir -p /veris/mysql/3306/log/relay && \
    mkdir -p /veris/mysql/3306/log/slow && \
    mkdir -p /veris/mysql/3306/tmp && \
    chown -R mysql:mysql /veris/mysql/3306/* && \
    chown -R mysql:mysql /veris/mysql/3306/innodb/log && \
    chown -R mysql:mysql /veris/mysql/3306/log/*

# Add MySQL configuration
COPY my_3306.cnf /veris/mysql/3306/etc/my_3306.cnf


# Add MySQL scripts
COPY run.sh /run.sh
COPY db_start /usr/bin/db_start
COPY db_stop /usr/bin/db_stop

#open port
EXPOSE 3306

VOLUME ["/veris/mysql/3306","/veris/mysql/3306"]
