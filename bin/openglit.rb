#http://ruby-opengl.rubyforge.org/tutorial.html
#
#

require 'opengl'

matrix_a = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
matrix_b = [ [  0, 1, 2, 3 ],
               [  4, 5, 6, 7 ],
                            [  8, 9,10,11 ],
                                         [ 12,13,14,15 ] ]
matrix_c = Matrix.rows( [ [  0, 1, 2, 3 ],
                                                 [  4, 5, 6, 7 ],
                                                                           [  8, 9,10,11 ],
                                                                                                     [ 12,13,14,15 ] ] )
  glLoadMatrixf(matrix_a)
glLoadMatrixf(matrix_b) 
glLoadMatrixf(matrix_c) # same result


