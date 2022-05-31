if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/rohann3x/avika2.git /EvaMaria
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria
fi
cd /EvaMaria
pip3 install -U -r requirements.txt
echo "Starting Avika....✅"
python3 bot.py
