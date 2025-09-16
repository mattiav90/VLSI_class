set style data lines
set xlabel "Time (ns)"
set ylabel "Voltage (V)"
plot    'test.plot' using ($2*1e9):3 title 'v(in1)', \
        'test.plot' using ($2*1e9):4 title 'v(in2)', \
        'test.plot' using ($2*1e9):5 title 'v(in3)', \
        'test.plot' using ($2*1e9):6 title 'v(in4)', \
	'test.plot' using ($2*1e9):6 title 'v(in5)', \
	'test.plot' using ($2*1e9):6 title 'v(in6)', \
	'test.plot' using ($2*1e9):6 title 'v(in7)', \
	'test.plot' using ($2*1e9):6 title 'v(in8)', \
        'test.plot' using ($2*1e9):7 title 'out'
