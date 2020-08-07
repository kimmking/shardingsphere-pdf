git clone https://github.com/apache/shardingsphere
cp -rf shardingsphere/docs/document/content/* ./
rm -rf shardingsphere

find . -name '*.en.md' | xargs rm -rf 
find . -name '*.cn.md' | xargs sed -i '1d' 
find . -name '*.cn.md' | xargs sed -i -n '/+++/,$ p' 
find . -name '*.cn.md' | xargs sed -i '1d' 

gitbook pdf

git add .
git commit -m "update"
git push