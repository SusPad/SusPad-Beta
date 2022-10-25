if [ "$EUID" -ne 0 ]
  then echo "Error: Please run as root"
  exit
fi

echo "===================="
echo "Updating packages"
echo "===================="

apt update
apt upgrade -y

