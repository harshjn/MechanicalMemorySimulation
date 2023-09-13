
SetFactory("OpenCASCADE");
r = 0.1;
d = 1;


Box(1) = {0, 0, 0, d, r, r};
Rotate { {0,0,1},{0,0,0},Pi/2} {Duplicata {Volume{1}; }}


Translate{0.0,d,0}{Duplicata {Volume{1};}}
Translate{d,0.0,0}{Duplicata {Volume{1};}}
Translate{d,d,0}{Duplicata {Volume{1};}}
Translate{0.0,2*d,0}{Duplicata {Volume{1};}}
Translate{2*d,0,0}{Duplicata {Volume{1};}}
Translate{d,2*d,0}{Duplicata {Volume{1};}}
Translate{2*d,2*d,0}{Duplicata {Volume{1};}}
Translate{2*d,d,0}{Duplicata {Volume{1};}}
Translate{0*d,3*d-r,0}{Duplicata {Volume{1};}}
Translate{1*d,3*d-r,0}{Duplicata {Volume{1};}}
Translate{2*d,3*d-r,0}{Duplicata {Volume{1};}}

Translate{0.0,d,0}{Duplicata {Volume{2};}}
Translate{d,0.0,0}{Duplicata {Volume{2};}}
Translate{d,d,0}{Duplicata {Volume{2};}}
Translate{0.0,2*d,0}{Duplicata {Volume{2};}}
Translate{2*d,0,0}{Duplicata {Volume{2};}}
Translate{d,2*d,0}{Duplicata {Volume{2};}}
Translate{2*d,2*d,0}{Duplicata {Volume{2};}}
Translate{2*d,d,0}{Duplicata {Volume{2};}}
Translate{3*d,0,0}{Duplicata {Volume{2};}}
Translate{3*d,d,0}{Duplicata {Volume{2};}}
Translate{3*d,2*d,0}{Duplicata {Volume{2};}}

BooleanUnion{ 
Volume{1}; 
Volume{2}; 
Volume{3}; 
Volume{4}; 
Volume{5}; 
Volume{6}; 
Volume{7}; 
Volume{8}; 
Volume{9}; 
Volume{10}; 
Volume{11}; 
Volume{12}; 
Volume{13}; 
Volume{14}; 
Volume{15}; 
Volume{16}; 
Volume{17}; 
Volume{18}; 
Volume{19}; 
Volume{20}; 
Volume{21}; 
Volume{22}; 
Volume{23}; 
Delete; }
{ Volume{24}; Delete; }

