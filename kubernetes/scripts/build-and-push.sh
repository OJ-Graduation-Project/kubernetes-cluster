PORT=5000
BACKEND_IMAGE_TAG="localhost:$PORT/oj-backend"
FRONTEND_IMAGE_TAG="localhost:$PORT/oj-frontend"
MONGO_IMAGE_TAG="localhost:$PORT/custom-mongo"

docker build online-judge-backend -t "$BACKEND_IMAGE_TAG"
docker push "$BACKEND_IMAGE_TAG"


docker build online-judge-frontend -t "$FRONTEND_IMAGE_TAG"
docker push "$FRONTEND_IMAGE_TAG"

docker build custom-mongo -t "$MONGO_IMAGE_TAG"
docker push "$MONGO_IMAGE_TAG"
