# Local docker

| URL                                     | Description     |
|-----------------------------------------|-----------------|
| [localhost:9201](http://localhost:9201) | es node1        |
| [localhost:9202](http://localhost:9202) | es node2        |
| [localhost:5601](http://localhost:5601) | kibana          |
| [localhost:9998](http://localhost:9998) | tika            |
| [localhost:9001](http://localhost:9001) | minio           |
| [localhost:8025](http://localhost:8025) | mailhog         |
| [localhost:8026](http://localhost:8026) | redis commander |

### Exposing

| Port | service  |
|------|----------|
| 5432 | postgres |
| 1025 | mailhog  |
| 9002 | minio    |
| 6380 | redis    |
| 9998 | tika     |

```dotenv
EMS_ELASTICSEARCH_HOSTS='["http://localhost:9201","http://localhost:9202","http://localhost:9203"]'
EMS_STORAGES='[{"type":"s3","usage":"cache","upload-folder":"/tmp/ems-uploads","bucket":"demo","credentials":{"version":"2006-03-01","credentials":{"key":"accesskey","secret":"secretkey"},"region":"us-east-1","endpoint":"http://localhost:9099","use_path_style_endpoint":true}}]'
EMSCO_TIKA_SERVER='http://localhost:9998'
MAILER_URL=smtp://localhost:1025

REDIS_HOST=localhost
REDIS_PORT=6380
```
