#Image for nginx
FROM nginx:1.17.1-alpine
# Copy the build output to replace the default nginx contents
COPY dist /usr/share/nginx/html
# Copy the nginx config
COPY nginx.conf /etc/nginx/nginx.conf   
# Expose port 80
EXPOSE 80
# Set the default command to execute
# when creating a new container
CMD ["nginx", "-g", "daemon off;"]
