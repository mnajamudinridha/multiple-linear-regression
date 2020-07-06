# multiple-linear-regression

# Required
- git => download (https://git-scm.com/download/win)
- docker & docker-compose => download (https://download.docker.com/win/stable/Docker%20Desktop%20Installer.exe)
- composer => download (https://getcomposer.org/)

# clone project
- buka aplikasi git bash, lalu jalankan perintah dibawah ini
- jalankan perintah `git clone https://github.com/najcardboyz/multiple-linear-regression.git`

# Step
- jalankan service docker desktop, lalu lanjut dibawah
- masuk folder docker-web (setelah git clone), lalu jalankan perintah `composer install`
- jalankan perintah `docker-compose build` (jalankan pertama kali) setelahnya `ctrl + c` jika sudah selesai
- jalankan perintah `docker-compose up -d` (jika untuk menjalankan nya)
- untuk stop, jalankan perintah `docker-compose down`

# Export database
- jalankan perintah `docker-compose up -d` (jika untuk menjalankan nya)
- akses di google chrome `http://localhost:8082` (username : root, password : rahasia123)
- create database baru dengan nama `multiple-linear-regression`
- klik database, lalu import file `multiple-linear-regression.sql` (filenya ada setelah git clone)

# Jalankan program
- program utama akses `http://localhost:8080`
- program database phpmyadmin `http://localhost:8082`
- program jupyternotebook `http://localhost:8084`
