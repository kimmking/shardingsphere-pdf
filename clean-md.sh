git clone https://github.com/apache/shardingsphere
ll shardingsphere/docs/document/content/
cp -fr shardingsphere/docs/document/content/*  md  
rm -rf shardingsphere


cd md

find . -name '*.en.md' | xargs rm -rf 
find . -name '*.cn.md' | xargs sed -i '1d' 
find . -name '*.cn.md' | xargs sed -i -n '/+++/,$ p' 
find . -name '*.cn.md' | xargs sed -i '1d' 

gitbook pdf

cd ..

git add .
git commit -m "update"
git push