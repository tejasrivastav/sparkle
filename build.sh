var_path=`dirname "$0"`
#to install java 1.8 openjdk
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update 
sudo apt-get install openjdk-8-jdk

#moving java to package repo
mkdir -p tools/java
cd /usr/lib/jvm/

#replace the destination path to your Project location
cp -r ./java-8-openjdk-amd64/ $var_path/tools/java/

cd $var_path
#downloading typesafe activator
mkdir -p tools/typesafe
wget https://downloads.typesafe.com/typesafe-activator/1.3.7/typesafe-activator-1.3.7.zip
cp -r ./typesafe-activator-1.3.7.zip ./tools/typesafe
rm -rf ./typesafe-activator-1.3.7.zip
cd ./tools/typesafe
unzip ./typesafe-activator-1.3.7.zip
export PATH=./activator-dist-1.3.7/:$PATH
rm -rf ./typesafe-activator-1.3.7.zip

#starting the application
cd ../../
./start.sh