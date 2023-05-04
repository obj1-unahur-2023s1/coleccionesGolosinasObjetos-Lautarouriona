
object bombon {
	var peso = 15
method sabor() = frutilla
method precio() = 5
method peso() = peso
method contieneGluten()= false
method recibirMordico(){(peso = (peso * 0.8) - 1)}
}

object alfajor {
	var peso = 300
method sabor() = chocolate 
method precio() = 12
method peso() = peso
method contieneGluten()= true
method recibirMordisco(){peso = peso * 0.8}
}


object caramelo {
	var peso = 5
method sabor() = frutilla
method precio() = 1
method peso() = peso
method contieneGluten()= false
method recibirMordisco(){peso = peso -1}

}

object chupetin {
	var property peso = 7
method sabor() = naranja
method precio() = 2
method contieneGluten()= false
method recibirMordisco()
{if(peso>2)
	{peso = peso * 0.9}
}
}


object oblea {
	var property peso = 250
method sabor() = vainilla
method precio() = 5
method contieneGluten()= true
method recibirMordisco(){
	if(peso > 70)
	{peso = peso * 0.5}
	else{peso = peso *0.75}
	}
}

object chocolatin {
	var  peso = 5
method sabor() = chocolate
method precio() =  self.peso() * 0.5
method peso() = peso
method contieneGluten()= true
method recibirMordisco(){peso = peso - 2}
}


object golosinaBaniada {
	var property golosina 
	var  peso = 4
	
method sabor() =  golosina.sabor()
method precio() = 2 + golosina.precio()
method peso() = peso + golosina.gramos()
method contieneGluten()= golosina.contieneGluten()
method recibirMordisco(){
	peso=0.max(peso-2)
	golosina.recibirMordisco()
}
}

object tuttifruti {
	var property peso = 5
	var property contieneGluten = false
	var  saborActual
	const sabores = [frutilla, chocolate, vainilla ]
	var cantMordiscos = 0
method sabor() = saborActual
method precio(){return if(not contieneGluten){7}else{10}}
method contieneGluten()= true
method recibirMordisco(){
	saborActual = sabores.get(cantMordiscos)
	cantMordiscos++
	if(cantMordiscos == 2){
		cantMordiscos = 0
	}
}
}

object frutilla{
	
}

object chocolate{
	
}

object naranja{
	
}
object vainilla{
	
}


