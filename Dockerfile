FROM airhacks/glassfish
COPY ./target/jsfapp.war ${DEPLOYMENT_DIR}
