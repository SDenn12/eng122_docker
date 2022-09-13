# Select NGINX base image
FROM nginx

# label it
LABEL MAINTAINER=sdennis@spartaglobal.com

# copy data from localhost to the container
COPY index.html /usr/share/nginx/html/
COPY sam_profile_pic.jpg /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# allow required port
EXPOSE 80

# execute required command
CMD ["nginx", "-g", "daemon off;"]