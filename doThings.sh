sudo rm -R /home/experimento/Experimento/
mkdir /home/experimento/Experimento/
cp -R ./ /home/experimento/Experimento/
cd /home/experimento/Experimento
tar -vzxf eclipse.tar.gz
mv ./Tools/plugin.experiment* ./eclipse/plugins/
cp -R ./eclipse/* ./Tools/Task1.1
mv ./Tools/Task1.1/config.properties ./Tools/Task1.1/plugins
cp -R ./eclipse/* ./Tools/Task1.2
mv ./Tools/Task1.2/config.properties ./Tools/Task1.2/plugins
cp -R ./eclipse/* ./Tools/Task2.1
mv ./Tools/Task2.1/config.properties ./Tools/Task2.1/plugins
cp -R ./eclipse/* ./Tools/Task2.2
mv ./Tools/Task2.2/config.properties ./Tools/Task2.2/plugins
cp -R ./eclipse/* ./Tools/Task3.1
mv ./Tools/Task3.1/config.properties ./Tools/Task3.1/plugins
cp -R ./eclipse/* ./Tools/Task3.2
mv ./Tools/Task3.2/config.properties ./Tools/Task3.2/plugins
cp -R ./eclipse/* ./Tools/Warm1
mv ./Tools/Warm1/config.properties ./Tools/Warm1/plugins
cp -R ./eclipse/* ./Tools/Warm2
mv ./Tools/Warm2/config.properties ./Tools/Warm2/plugins
cp -R ./eclipse/* ./Tools/Warm3
mv ./Tools/Warm3/config.properties ./Tools/Warm3/plugins
mv /Tools/Task1.1/Task1 ~/Área\ de\ Trabalho/
mv /Tools/Task1.2/Task4 ~/Área\ de\ Trabalho/
mv /Tools/Task2.1/Task2 ~/Área\ de\ Trabalho/
mv /Tools/Task2.2/Task5 ~/Área\ de\ Trabalho/
mv /Tools/Task3.1/Task3 ~/Área\ de\ Trabalho/
mv /Tools/Task3.2/Task6 ~/Área\ de\ Trabalho/
mv /Tools/Warm1/Warm1 ~/Área\ de\ Trabalho/
mv /Tools/Warm2/Warm2 ~/Área\ de\ Trabalho/
mv /Tools/Warm3/Warm3 ~/Área\ de\ Trabalho/
rm -R ./eclipse