FROM r2h2/shibsp

# install php modules for Termino applicaiton based on Drupal
RUN yum install -y * php-pdo php-gd php-xml php-mcrypt php-mysql php-mbstring && yum -y clean all

