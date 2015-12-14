set term pdfcairo enhanced size 5.00in, 3.00in 
set output 'graph2.pdf'

set ylabel 'Chance of every device receiving transmission'
set xlabel 'Number of identical transmission per timeslot'
set grid ytics lc rgb "#88607D8B" lt 1
set tic scale 0
set xrange[-0.5:9.5]
set yrange[75:100]
set format y "%0.s %%" 
set title ''  
set xtics ("1 Tx" 0.75, "2 Tx" 3.25, "3 Tx" 5.75, "4 Tx" 8.25)

set boxwidth 0.25
set style fill solid
set key samplen 3
set key rmargin center title 'Pkg. loss'

plot 'bars_2.dat' every 4 using 1:(($3+$2)/2) with boxes lc rgb '#03A9F4' title "2 %",\
'' every 4    u 1:(($3+$2)/2):(($3-$2)/2) with yerrorbars lt -1 lc rgb '#01579B' t'',\
'' every 4::1 u 1:(($3+$2)/2) with boxes lc rgb '#00BCD4' t "4 %",\
'' every 4::1 u 1:(($3+$2)/2):(($3-$2)/2) with yerrorbars lt -1 lc rgb '#006064' t'',\
'' every 4::2 u 1:(($3+$2)/2) with boxes lc rgb '#009688' t "6 %",\
'' every 4::2 u 1:(($3+$2)/2):(($3-$2)/2) with yerrorbars lt -1 lc rgb '#004D40' t'',\
'' every 4::3 u 1:(($3+$2)/2) with boxes lc rgb '#4CAF50' t "8 %",\
'' every 4::3 u 1:(($3+$2)/2):(($3-$2)/2) with yerrorbars lt -1 lc rgb '#1B5E20' t''
