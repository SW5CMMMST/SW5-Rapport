set term pdfcairo size 6.00in, 4.00in
set output 'graph.pdf'
set xlabel 'Run duration time'
set ylabel 'Probability'
set title '' 
set yrange[0:1] 
set xrange[0:]
set grid ytics lc rgb "#607D8B" lw 1 lt 0
set grid xtics lc rgb "#607D8B" lw 1 lt 0
set key right bottom spacing 2 box
plot 'a.csv' using 1:2 w l t 'Query a...' rgb "03A9F4"
plot 'b.csv' using 1:2 w l t 'Query b...' rgb "673AB7"
                              