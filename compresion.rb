module Compresion
	REFLATE = -> (tamanioOriginal) { 0.8 }
	BSIP2 = -> tamanioOriginal { if tamanioOriginal > 100 then 0.6 else 0.9 end }
	SINCOMPRESION = -> tamanioOriginal { 1 }
end