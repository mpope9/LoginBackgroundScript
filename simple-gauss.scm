(define (simple-gauss runmode
		        filename
			amount
			radius
			method)
	(let* ((image (car (gimp-file-load RUN-NONINTERACTIVE filename filename)))
		(drawable (car (gimp-image-get-active-layer image))))
	(plug-in-gauss RUN-NONINTERACTIVE
		image drawable amount radius method)
	(gimp-file-save RUN-NONINTERACTIVE image drawable filename filename)
	(gimp-image-delete image)))
