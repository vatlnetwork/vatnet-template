read -p "Address: " address
read -p "Filename: " filename
rails server -b $address >>console.log
cp console.log vslogs/$filename.log
rm console.log -r -f
