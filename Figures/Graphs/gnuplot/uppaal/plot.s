set term pdfcairo size 6.00in, 4.00in
set output 'graph.pdf'
set xlabel 'Run duration in UPPAAL time units'
set ylabel 'Probability'
set title ''
set yrange[0:1]
set ytics 0,0.1,1
set xrange[0:200000]
set format x "%.s%c"
set grid ytics lc rgb "#88607D8B" lw 1 lt 1
set grid xtics lc rgb "#88607D8B" lw 1 lt 1
set key right bottom spacing 2 box
plot 'q2.txt' using 1:2 with lines t 'Query 2' lc rgb "#03A9F4" lw 2, \
     'q3.txt' using 1:2 with lines t 'Query 3' lc rgb "#8BC34A" lw 2, \
     'q4.txt' using 1:2 with lines t 'Query 4' lc rgb "#FF5722" lw 2, \
     'q5.txt' using 1:2 with lines t 'Query 5' lc rgb "#000000" lw 2, \
     'q6.txt' using 1:2 with lines t 'Old Model query 4' lc rgb "#FF00FF" lw 2
