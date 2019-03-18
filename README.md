# README

## Custom fields

## Page

* video_url
* external_download_url

# Categories

- Noticias
- Música
- Videos


Backups

```bash
#!/bin/bash
mkdir backups && \
  pg_dump -U postgres -d $RAILS_DATABASE_NAME > backups/production_dump.sql && \
  cp -R public/media/ backups && \
  tar -zcvf backups.tar.gz backups/
echo "-------------------------------------------------------------------------------"
echo "scp  user@ip:/path/backups.tar.gz ."
```

```bash
wget -O drive https://drive.google.com/uc?id=0B3X9GlR6EmbnMHBMVWtKaEZXdDg
sudo mv drive /usr/sbin/drive  
sudo chmod 755 /usr/sbin/drive
```