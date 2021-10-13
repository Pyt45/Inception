FROM alpine

RUN apk add go --no-cache

WORKDIR /app

COPY conf .

RUN go mod tidy

CMD ["go", "run", "main.go"]