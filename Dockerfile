FROM local/shibsp

# Upgrade to PHP 7
RUN yum -y install epel-release \
 && yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm \
 && yum -y install yum-utils \
 && yum-config-manager --enable remi-php73 \
 && yum -y clean all

# install php modules for Termino application (based on Drupal)
RUN yum -y install patch \
 && yum install -y php-pdo php-gd php-xml php-mcrypt php-mysql php-mbstring \
 && yum -y clean all

