# Use official Tomcat image
FROM tomcat:latest

# Remove default webapps to keep it clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your HTML page to the webapps/ROOT directory
COPY index.html /usr/local/tomcat/webapps/ROOT/index.html

# Expose port 8080 for Tomcat
EXPOSE 9090

# Start Tomcat
CMD ["catalina.sh", "run"]
