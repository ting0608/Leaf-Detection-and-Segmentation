   c   l   c   ;      
   %       I   m   a   g   e       d   a   t   a   b   a   s   e      
   f   o   l   d   e   r   _   n   a   m   e       =       '   t   i   n   g   c   c   c   c   _   I   P   '   ;      
      
   %   r   e   a   d       i   m   a   g   e   ,       c   h   a   n   g   e       i   m   r   e   a   d       f   o   r       d   i   f   f   e   r   e   n   t       i   m   a   g   e   s      
   i   m   g   1                                               =       i   m   r   e   a   d   (   '   p   l   a   n   t   0   0   3   .   p   n   g   '   )   ;      
   i   m   g   1                                               =       i   m   r   e   s   i   z   e   (   i   m   g   1   ,   [   5   1   2   ,   5   1   2   ]   )   ;      
      
      
   %   T   u   r   n       i   m   a   g   e       i   n   t   o       g   r   a   y       s   c   a   l   e       a   n   d       b   i   n   a   r   i   z   e       i   m   a   g   e      
   I   n   p   u   t   _   i   m   a   g   e       =       i   m   2   d   o   u   b   l   e   (   i   m   g   1   )   ;      
   g   r   a   y                                   =       I   n   p   u   t   _   i   m   a   g   e   (   :   ,   :   ,   2   )   ;      
   B   W                                           =       i   m   b   i   n   a   r   i   z   e   (   g   r   a   y   )   ;      
      
   %   s   e   g   m   e   n   t   a   t   i   o   n       w   i   t   h       M   o   r   p   h   o   l   o   g   i   c   a   l       O   p   e   r   a   t   i   o   n      
   s   e                                           =       s   t   r   e   l   (   '   d   i   s   k   '   ,       1   )   ;      
   I   m   d   i   l   u   t   e   =   i   m   e   r   o   d   e   (   B   W   ,   s   e   )   ;      
   s   e                                           =       s   t   r   e   l   (   '   d   i   s   k   '   ,       2   )   ;      
   I   m   a   g   e   _   s   e   g   m   e   n   t   3   =   i   m   d   i   l   a   t   e   (   I   m   d   i   l   u   t   e   ,   s   e   )   ;      
      
      
      
      
   %   R   e   m   o   v   e       s   m   a   l   l       o   b   j   e   c   t   s       f   r   o   m       b   i   n   a   r   y       i   m   a   g   e   ,       t   h   e       n   u   m   b   e   r       b   e   h   i   n   d       m   e   a   n   s       r   e   m   o   v   e   s      
   %   A   l   l       c   o   n   n   e   c   t   e   d       c   o   m   p   o   n   e   n   t   s       (   o   b   j   e   c   t   s   )       t   h   a   t       h   a   v   e       f   e   w   e   r       t   h   a   n       7   0   0       p   i   x   e   l   s       f   r   o   m       t   h   e       b   i   n   a   r   y       i   m   a   g   e   .      
   %   T   h   i   s       o   p   e   r   a   t   i   o   n       i   s       k   n   o   w   n       a   s       a   n       a   r   e   a       o   p   e   n   i   n   g   .      
   I   m   a   g   e   _   s   e   g   m   e   n   t   4   =   b   w   a   r   e   a   o   p   e   n   (   I   m   a   g   e   _   s   e   g   m   e   n   t   3   ,   7   0   0   )   ;      
      
   %       G   i   v   e       e   a   c   h       b   l   o   b       a       u   n   i   q   u   e       I   D       n   u   m   b   e   r       (   a       l   a   b   e   l   )   .      
   o   u   t   p   u   t       =       b   w   l   a   b   e   l   (   I   m   a   g   e   _   s   e   g   m   e   n   t   4   )   ;      
      
   %       G   e   t       c   e   n   t   r   o   i   d   s   .      
   m   e   a   s   u   r   e   m   e   n   t   s       =       r   e   g   i   o   n   p   r   o   p   s   (   I   m   a   g   e   _   s   e   g   m   e   n   t   4   ,       '   C   e   n   t   r   o   i   d   '   )   ;      
   c   e   n   t   r   o   i   d   s       =       [   m   e   a   s   u   r   e   m   e   n   t   s   .   C   e   n   t   r   o   i   d   ]   ;      
   x   C   e   n   t   r   o   i   d   s       =       c   e   n   t   r   o   i   d   s   (   1   :   2   :   e   n   d   )   ;      
   y   C   e   n   t   r   o   i   d   s       =       c   e   n   t   r   o   i   d   s   (   2   :   2   :   e   n   d   )   ;      
      
   %       F   i   n   d       d   i   s   t   a   n   c   e   s       t   o       m   i   d   d   l   e       o   f       i   m   a   g   e      
   [   r   o   w   s   ,       c   o   l   u   m   n   s   ,       n   u   m   b   e   r   O   f   C   o   l   o   r   C   h   a   n   n   e   l   s   ]       =       s   i   z   e   (   I   m   a   g   e   _   s   e   g   m   e   n   t   4   )   ;      
   d   i   s   t   a   n   c   e   s       =       s   q   r   t   (   (   r   o   w   s   /   2   -   x   C   e   n   t   r   o   i   d   s   )   .   ^   2       +       (   c   o   l   u   m   n   s   /   2   -   y   C   e   n   t   r   o   i   d   s   )   .   ^   2   )   ;      
      
   %       F   i   n   d       t   h   e       m   i   n       d   i   s   t   a   n   c   e      
   [   m   i   n   D   i   s   t   a   n   c   e   ,       i   n   d   e   x   O   f   M   i   n   ]       =       m   i   n   (   d   i   s   t   a   n   c   e   s   )   ;      
      
   %       E   x   t   r   a   c   t       b   i   n   a   r   y       i   m   a   g   e       o   f       o   n   l   y       t   h   e       c   l   o   s   e   s   t       b   l   o   b      
   c   e   n   t   r   a   l   I   m   g       =       o   u   t   p   u   t       =   =       i   n   d   e   x   O   f   M   i   n   ;      
      
   %   w   a   t   e   r   s   h   e   d       t   h   r   e   s   h   o   l   d   i   n   g       s   e   g   m   e   n   t   a   t   i   o   n      
   n   e   w   c   e   n   t   r   a   l   I   m   g   =   ~   c   e   n   t   r   a   l   I   m   g   ;      
   w   a   t   e   r   I       =       -   b   w   d   i   s   t   (   n   e   w   c   e   n   t   r   a   l   I   m   g   )   ;      
   w   a   t   e   r   I   (   n   e   w   c   e   n   t   r   a   l   I   m   g   )       =       -   I   n   f   ;      
   L       =       w   a   t   e   r   s   h   e   d   (   i   m   h   m   i   n   (   w   a   t   e   r   I   ,   1   )   )   ;      
   L   (   ~   c   e   n   t   r   a   l   I   m   g   )       =       0   ;      
      
      
   %       D   e   f   i   n   e       t   h   e       t   w   o       c   o   l   o   r   m   a   p   s   .      
   c   m   a   p   1       =       j   e   t   (   3   0   )   ;      
   c   m   a   p   2       =       h   o   t   (   3   0   )   ;          
   c   m   a   p   3       =       w   i   n   t   e   r   (   3   0   )   ;      
      
   %       C   o   m   b   i   n   e       t   h   e   m       i   n   t   o       o   n   e       c   o   l   o   r   m   a   p   .      
   c   o   m   b   i   n   e   d   C   o   l   o   r   M   a   p       =       [   c   m   a   p   1   ;       c   m   a   p   2   ;       c   m   a   p   3   ]   ;      
   %       P   i   c   k       3   0       r   o   w   s       a   t       r   a   n   d   o   m   .      
   r   a   n   d   o   m   R   o   w   s       =       r   a   n   d   p   e   r   m   (   s   i   z   e   (   c   o   m   b   i   n   e   d   C   o   l   o   r   M   a   p   ,       1   )   ,       3   0   )   ;      
   %       E   x   t   r   a   c   t       t   h   e       r   o   w   s       f   r   o   m       t   h   e       c   o   m   b   i   n   e   d       c   o   l   o   r       m   a   p   .      
   r   a   n   d   o   m   C   o   l   o   r   s       =       c   o   m   b   i   n   e   d   C   o   l   o   r   M   a   p   (   r   a   n   d   o   m   R   o   w   s   ,       :   )   ;      
      
   w   i       =       l   a   b   e   l   2   r   g   b   (   L   ,   r   a   n   d   o   m   C   o   l   o   r   s   ,   '   k   '   )   ;      
      
      
   %   p   l   o   t       i   m   a   g   e      
   s   u   b   p   l   o   t   (   1   ,   2   ,   1   )      
   i   m   s   h   o   w   (   i   m   g   1   )      
   t   i   t   l   e   (   '   o   r   i   g   i   n   a   l   '   )      
      
   s   u   b   p   l   o   t   (   1   ,   2   ,   2   )      
   i   m   s   h   o   w   (   w   i   )      
   t   i   t   l   e   (   '   b   w   a   r   e   o   p   e   n   '   )      
      
      
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ��