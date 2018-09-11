while true
do
echo LENDO SERIAL...
diferenca1=$(./autoclock.sh)
diferenca2=$(./autoclock.sh)
diferenca3=$(./autoclock.sh)
soma1=($(echo $diferenca1+$diferenca2+$diferenca3 | bc))
media1=($(echo 'scale=12; '$soma1'/3' | bc))
echo media das diferenças - 1: 0$media1 Segundos
echo $media1 > media1.txt
diferenca4=$(./autoclock.sh)
diferenca5=$(./autoclock.sh)
diferenca6=$(./autoclock.sh)
soma2=($(echo $diferenca4+$diferenca5+$diferenca6 | bc))
media2=($(echo 'scale=12; '$soma2'/3' | bc))
echo media das diferenças - 2: 0$media2 Segundos
echo $media2 > media2.txt
echo -e 0$media1 >> armazenamentoserial.txt
mediageral=($(echo $media1-$media2 | bc))
echo erro:  $mediageral Segundos
echo EXECUTANDO NOVA MEDIDA...
echo ----------------------------------------------------------------------
done
