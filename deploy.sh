rake db:drop
rake db:create
rake db:migrate

cd python
python3 run.py
cd ..
cat ./python/seed_head.txt > seeds.rb
cat ./python/seed_tail.txt >> seeds.rb
mv ./db/seeds.rb ./db/seeds.rb_arch
mv seeds.rb ./db/