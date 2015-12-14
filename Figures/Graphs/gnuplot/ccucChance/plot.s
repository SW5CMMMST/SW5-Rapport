set term pdfcairo enhanced size 5.00in, 3.00in 
set output 'graph.pdf'

set ylabel 'Chance of every device receiving transmission'
set xlabel 'Chance of unsuccessful transmission'
set grid ytics lc rgb "#88607D8B" lt 1
set tic scale 0
set xrange[-0.5:9.5]
set yrange[75:100]
set format y "%0.s %%" 
set title ''  
set xtics ("2 %%" 0.75, "4 %%" 3.25, "6 %%" 5.75, "8 %%" 8.25)

set boxwidth 0.25
set style fill solid
set key samplen 5
set key rmargin center title 'Transmissions'

plot 'bars.dat' every 4 using 1:(($3+$2)/2) with boxes lc rgb '#03A9F4' title "1",\
'' every 4    u 1:(($3+$2)/2):(($3-$2)/2) with yerrorbars lt -1 lc rgb '#01579B' t'',\
'' every 4::1 u 1:(($3+$2)/2) with boxes lc rgb '#00BCD4' t "2",\
'' every 4::1 u 1:(($3+$2)/2):(($3-$2)/2) with yerrorbars lt -1 lc rgb '#006064' t'',\
'' every 4::2 u 1:(($3+$2)/2) with boxes lc rgb '#009688' t "3",\
'' every 4::2 u 1:(($3+$2)/2):(($3-$2)/2) with yerrorbars lt -1 lc rgb '#004D40' t'',\
'' every 4::3 u 1:(($3+$2)/2) with boxes lc rgb '#4CAF50' t "4",\
'' every 4::3 u 1:(($3+$2)/2):(($3-$2)/2) with yerrorbars lt -1 lc rgb '#1B5E20' t''
