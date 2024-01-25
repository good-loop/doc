FROM python:3.10-slim

WORKDIR /

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

RUN mkdocs build

FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY --from=0 site/ /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]