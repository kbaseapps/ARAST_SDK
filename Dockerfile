FROM dockerhub-prod.kbase.us/arast:legacy
MAINTAINER Shane Canon <scanon@lbl.gov>
# -----------------------------------------

# Copy local wrapper files, and build

COPY ./ /kb/module
    

WORKDIR /kb/module

RUN make

ENTRYPOINT [ "./scripts/entrypoint.sh" ]

CMD [ ]
