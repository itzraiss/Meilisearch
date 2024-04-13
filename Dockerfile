# Use the official MeiliSearch image as a base
FROM getmeili/meilisearch:latest

# Set environment variables
#ENV MEILI_HOST=0.0.0.0:7700
ENV MEILI_HTTP_ADDR=0.0.0.0:7700
ENV MEILI_NO_ANALYTICS=true

# Expose the default MeiliSearch HTTP port to the host
EXPOSE 7700

# Create and set the MeiliSearch data directory
RUN mkdir -p /meili_data
RUN chmod -R 777 /meili_data
VOLUME ["/meili_data"]

# The base image already defines an ENTRYPOINT that runs MeiliSearch
#Credits to @fuegovic
