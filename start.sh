if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/edenwaters12/VJ-FILTER-anu.git /VJ-FILTER
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /VJ-FILTER-anu
fi
cd /VJ-FILTER-anu
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
