set term pdfcairo size 6.00in, 4.00in
set output 'graph2.pdf'
set xlabel 'set x label here'
set ylabel 'set y label here'
set title 'leave blank if no title is needed' 
set yrange[0:] 
set xrange[0:]
set grid ytics lc rgb "#bbbbbb" lw 1 lt 0
set grid xtics lc rgb "#bbbbbb" lw 1 lt 0
set key right bottom spacing 2 box
plot 'data.csv' using 1:2 w l t 'What is this line?'
                              