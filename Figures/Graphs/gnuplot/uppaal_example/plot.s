set term pdfcairo size 6.00in, 4.00in
set output 'graph2.pdf'
set xlabel 'UPPAAL time'
set ylabel '%'
set title 'Cumulative Probability' 
set yrange[0:] 
set xrange[0:]
set grid ytics lc rgb "#bbbbbb" lw 1 lt 0
set grid xtics lc rgb "#bbbbbb" lw 1 lt 0
set key right bottom spacing 2 box
plot 'data.txt' using 1:2 w l t 'Q 4', \
     'data_2.txt' using 1:2 w l t 'Q 1'

                              