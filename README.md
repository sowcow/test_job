# пример простейшего redmine plugin-а

опция скачать все вложения архивом для Issues/Задач

## установка (на примере Bitnami)

```
cd /opt/bitnami/apps/redmine/htdocs/plugins
git clone https://github.com/sowcow/test_job
mv test_job my
cd ..
bundle install --no-deployment
bundle update rubyzip
sudo service bitnami restart
```

## другое

https://github.com/sowcow/test_job/issues
