FROM getmeili/meilisearch:v1.6
EXPOSE 7700
CMD ["meilisearch", "--http-addr", "0.0.0.0:7700"]
