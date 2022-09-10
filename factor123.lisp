(defun factorial1 (n) 
	(if (= n 0) 
	    1 
  	    (* n (factorial1 (- n 1)))))

(loop for i from 0 to 16 
	do (format t "~D! = ~D~%" i (factorial1 i)) )



(defun factorial2 (n &optional (acc 1)) 
	(if (= n 0) 
	 	acc 
		(factorial2 (- n 1) (* acc n))))

(loop for i from 0 to 16 do (format t "~D! = ~D~%" i (factorial2 i)))



(defun factorial3 (n) 
	(loop for i from 1 to n 
		for fac = 1 then (* fac i) 
			finally (return fac)))
(loop for i from 0 to 16 
	do (format t "~D! = ~D~%" i (factorial3 i)) )



(defun factorial4 (n)
  (do
     ((i 1 (+ 1 i))
      (prod 1 (* i prod)))
     ((equal i (+ n 1)) prod)))


(loop for i from 0 to 16 
	do (format t "~D! = ~D~%" i (factorial4 i)) )





(defun factorial5 (n)
  (do
     ((i 1 (+ 1 i)) (prod 1 (* i prod)))
     ((equal i (+ n 1)) prod)
   ))



(loop for i from 0 to 16 
	do (format t "~D! = ~D~%" i (factorial5 i)) )
