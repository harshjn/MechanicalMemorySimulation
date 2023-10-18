SetFactory("OpenCASCADE");
r = 0.1;
d = 1;


Box(1) = {0, 0, 0, d, r, r};
Rotate { {0,0,1},{0,r/2,0},Pi/6} {Duplicata {Volume{1}; }}

Rotate { {0,0,1},{0,r/2,0},5*Pi/6} {Duplicata {Volume{1}; }}

Translate{d*Cos(Pi/6),d/2,0} {Rotate { {0,0,1},{0,r/2,0},3*Pi/6} {Duplicata {Volume{1}; }}}
Translate{-2*d*Cos(Pi/6),0,0} {Duplicata{Volume{4}; }}

Translate{-d*Cos(Pi/6),3*d/2,0} {Duplicata{Volume{2}; }}

Translate{d*Cos(Pi/6),3*d/2,0} {Duplicata{Volume{3}; }}



BooleanUnion{ 
 
Volume{2}; 
Volume{3}; 
Volume{4}; 
Volume{5}; 
Volume{6}; 
 
Delete; }
{ Volume{7}; Delete; }


Translate{Cos(Pi/6)*d,3/2*d,0}{Duplicata {Volume{2};}}
Translate{Cos(Pi/6)*2*d,0,0}{Duplicata {Volume{2};}}
Translate{Cos(Pi/6)*3*d,3/2*d,0}{Duplicata {Volume{2};}}


BooleanUnion{ 
 
Volume{2}; 
Volume{3}; 
Volume{4}; 
 
Delete; }
{ Volume{5}; Delete; }


Translate{0,3*d,0}{Duplicata {Volume{2};}}
//Translate{Cos(Pi/6)*2*d,3*d,0}{Duplicata {Volume{2};}}
Translate{Cos(Pi/6)*4*d,0,0}{Duplicata {Volume{2};}}
Translate{Cos(Pi/6)*4*d,3*d,0}{Duplicata {Volume{2};}}
//
//
//

BooleanUnion{ 
 
Volume{2}; 
Volume{3}; 
Volume{4}; 
 
Delete; }
{ Volume{5}; Delete; }



//---------------------
Translate{0,6*d,0}{Duplicata {Volume{2};}}
//Translate{Cos(Pi/6)*8*d,6*d,0}{Duplicata {Volume{2};}}
Translate{Cos(Pi/6)*8*d,0,0}{Duplicata {Volume{2};}}
Translate{Cos(Pi/6)*8*d,6*d,0}{Duplicata {Volume{2};}}

BooleanUnion{ 
 
Volume{3}; 
Volume{4}; 
Volume{5}; 
 
Delete; }
{ Volume{2}; Delete; }
//------------------------------------------------------------
// Now we make bottom seam. 
Box(3) = {-d, 0, 0, 16*d, r, r};
Box(4) = {-d, -r, 0, 16*d, r, r};
Box(5) = {-d, -2*r, 0, 16*d, r, r};
Box(6) = {-d, 0, 0, 16*d, r, r};
Box(7) = {-d, -r, 0, 16*d, r, r};
Box(8) = {-d, -2*r, 0, 16*d, r, r};


BooleanUnion{ 
Volume{8}; 
Volume{7}; 
Volume{6}; 

Volume{5}; 
Volume{3}; 
Volume{4}; 
 
Delete; }
{ Volume{1}; Delete; }


//-------------------create upper seam-----------------
Box(8) = {-d, 125*r, 0, 16*d, r, r};
Box(9) = {-d, 126*r, 0, 16*d, r, r};
Box(10) = {-d, 127*r, 0, 16*d, r, r};
Box(11) = {-d, 128*r, 0, 16*d, r, r};
Box(12) = {-d, 129*r, 0, 16*d, r, r};

BooleanUnion{ 
 
Volume{8}; 
Volume{9}; 
Volume{10}; 
Volume{11}; 
 
Delete; }
{ Volume{12}; Delete; }



//----------------Combine Lattice with seams ------------------------

BooleanUnion{ 
 
Volume{3}; 
Volume{2}; 
 
Delete; }
{ Volume{4}; Delete; }



