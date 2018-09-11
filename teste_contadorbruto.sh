while true
do
echo LENDO SERIAL...
diferenca1=$(./autoclock.sh)
echo $diferenca1
echo  $diferenca1 >> output/contador_testes.txt
echo EXECUTANDO NOVA MEDIDA...
echo ----------------------------------------------------------------------
done
