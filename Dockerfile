FROM getmeili/meilisearch:v1.6.1

EXPOSE 7700

ENV MEILI_HTTP_ADDR 0.0.0.0:7700
ENV MEILI_DB_PATH /meili-data
ENV MEILI_ENV production

CMD ["meilisearch"]
