echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/MRDarkOwl2K25/Forward-Bott MRDarkOwl2K25/Forward-Bott 
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/MRDarkOwl2K25/Forward-Bott -b $BRANCH /Forward-Bott
fi
cd MRDarkOwl2K25/Forward-Bott
pip3 install -U -r requirements.txt
echo "Starting Bot...."
gunicorn app:app & python3 main.py
