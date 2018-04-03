先にマウントポジション(/mnt/www-lazurite-ioなど)をmkdirで作成しておく
起動するたびに、以下のコマンドを実行する

mount -t cifs //192.168.30.11/www /mnt/www-lazurite-io -o user=root
mount -t cifs //192.168.30.16/api /mnt/api-lazurite-io -o user=pi
