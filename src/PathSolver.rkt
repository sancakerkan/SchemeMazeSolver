#lang scheme

#|
Elif Aysu Kürşad	14162766452
Erkan Sancak		44293566706
Metehan Tüter		27364818560
|#

;Scheme code for creating a path 
(define (buildPath rows)
  (cond
    ((null? rows) null)
    (else (cons (car rows) (buildPath (cdr rows))))))

;Scheme code of the sample path
(define sample-path
  (buildPath
   '(("S" "-" "-" "-" "-")
     ("E" "-" "-" "-" "-")
     ("E" "E" "E" "E" "E")
     ("-" "-" "-" "-" "E")
     ("-" "-" "-" "-" "F"))))


#| TASK 1 getHeight
This function returns the number of rows in the path.
It calculates the length of the path list.
|#
(define (getHeight path)
  (length path))

#| TASK 1 getWidth
This function returns the number of columns in the first row of the path.
It calculates the length of the first row.
|#
(define (getWidth path)
  (length (car path)))



#| TASK 2 getLetter
This function returns the letter at the specified row and column.
It accesses the row using list-ref and then accesses the column within that row.
|#
(define (getLetter path row col)
  (list-ref (list-ref path row) col))




#| HELPER FUNCTION-1
This is a helper function to find the solution path.
It searches for the path from the start to the finish.
It checks for boundaries, walls, and revisited cells.
If it finds the finish cell ('F'), it returns the current cell.
Otherwise, it tries to move in four directions (down, up, right, left) and constructs the path by choosing a valid direction.
|#
(define (find-path path row col visited)
  (cond
    ((or (< row 0) (< col 0) (>= row (getHeight path)) (>= col (getWidth path))
         (equal? (getLetter path row col) "-")
         (member (list row col) visited))
     '())
    ((equal? (getLetter path row col) "F")
     (list (list row col)))
    (else
     (let ((down (find-path path (+ row 1) col (cons (list row col) visited)))
           (up (find-path path (- row 1) col (cons (list row col) visited)))
           (right (find-path path row (+ col 1) (cons (list row col) visited)))
           (left (find-path path row (- col 1) (cons (list row col) visited))))
       (cond
         ((not (null? down)) (cons (list row col) down))
         ((not (null? up)) (cons (list row col) up))
         ((not (null? right)) (cons (list row col) right))
         ((not (null? left)) (cons (list row col) left))
         (else '()))))))




#| HELPER FUNCTION-2 
This function converts a list of coordinates into a list of moves ('D', 'U', 'L', 'R').
It uses a find-path to iterate through the coordinates,
determine the move between each pair of coordinates, and collect the moves.
|#
(define (coords-to-moves coords)
  (define (helper coords moves)
    (if (null? (cdr coords))
        (reverse moves)
        (let* ((current (car coords))
               (next (cadr coords))
               (move (cond
                       ((= (car current) (+ (car next) 1)) 'U)
                       ((= (car current) (- (car next) 1)) 'D)
                       ((= (cadr current) (+ (cadr next) 1)) 'L)
                       ((= (cadr current) (- (cadr next) 1)) 'R)
                       (else '()))))
          (helper (cdr coords) (cons move moves)))))
  (helper coords '()))



#| TASK 3 solvePath
This is the main function to solve the path.
It also uses "find-path" to get the path coordinates from the start (0, 0) to the finish.
If no path is found, it returns an empty list.
Otherwise, it converts the coordinates to moves using coords-to-moves.
|#
(define (solvePath path)
  (let ((path-coords (find-path path 0 0 '())))
    (if (null? path-coords)
        '()
        (coords-to-moves path-coords))))

; Display results
(displayln (getHeight sample-path)) 
(displayln (getWidth sample-path))
(displayln (getLetter sample-path 0 0)) 
(displayln (getLetter sample-path 1 0))
(displayln (getLetter sample-path 1 1)) 
(displayln (getLetter sample-path 4 4)) 
(displayln (solvePath sample-path)) 
