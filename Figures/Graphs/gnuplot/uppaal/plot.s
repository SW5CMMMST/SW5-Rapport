set term pdfcairo size 6.00in, 4.00in
set output 'graph.pdf'
set xlabel 'Run duration time'
set ylabel 'Probability'
set title ''
set yrange[0:1]
set ytics 0,0.1,1
set xrange[0:]
set format x "%.s%c"
set grid ytics lc rgb "#88607D8B" lw 1 lt 1
set grid xtics lc rgb "#88607D8B" lw 1 lt 1
set key right bottom spacing 2 box
plot 'a.csv' using 1:2 with lines t 'Query a...' lc rgb "#03A9F4" lw 2, \
     'b.csv' using 1:2 with lines t 'Query b...' lc rgb "#673AB7" lw 2
