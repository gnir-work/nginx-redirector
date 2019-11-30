FROM nginx

COPY nginx.conf /etc/nginx/conf.d/default.conf

CMD sed -i -e 's/$PORT/'"$PORT"'/g' -e 's/$REDIRECT_LINK/'"$REDIRECT_LINK"'/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
