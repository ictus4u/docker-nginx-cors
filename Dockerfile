FROM nginx:1.22.0-alpine

ARG BACKEND_API_URL

ENV BACKEND_API_URL=${BACKEND_API_URL}

COPY --chown=nginx ./nginx.conf /etc/nginx/templates/default.conf.template

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]
