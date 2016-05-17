echo kernel version: $(uname -r)

if test $(config skip_repo_update) = "1"; then
  echo skip apt-get update due to skip_repo_update set to 1
else
  sudo apt-get update -qq
fi
sudo apt-get install apt-transport-https ca-certificates

echo apt-transport-https $(dpkg -s apt-transport-https|grep Status:)
echo ca-certificates $(dpkg -s ca-certificates|grep Status:)

