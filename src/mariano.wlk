import golosinas.*
object mariano {
	var  golosinasDeseadas
	const bolsa = []
 method comprar(unaGolosina){
 	bolsa.add(unaGolosina)
}
method desechar(unaGolosina){
 	bolsa.remove(unaGolosina)
}
method cantidadDeGolosinas(){
	return bolsa.size()
}
method tieneLaGolosina(unaGolosina){
 	return bolsa.contains(unaGolosina)
}
 method probarGolosinas(){
return bolsa.forEach({golosina => golosina.mordisco()})
}	
 method hayGolosinaSinTACC(){
 	return bolsa.any{g=>g.contieneGluten() }
 }
 method preciosCuidados(){
 	 bolsa.all({dulce => dulce.precio()<=10})
 }
 
 method golosinaDeSabor(unSabor){
 	return bolsa.find({unaGolosina=>unaGolosina.sabor(unSabor)})
 	
 }
 method golosinasDeSabor(unSabor){
 	return bolsa.filter({unaGolosina=>unaGolosina.sabor(unSabor)})
 }
 
 method sabores(){
 	return bolsa.map({ dulce => dulce.sabor()}).asSet()
 }
 method golosinaMasCara(){
 return	bolsa.max({dulce => dulce.precio()})	
 }
 method pesoGolosinas(){
 	return bolsa.sum({golosina=>golosina.peso()})
 }
 method golosinasFaltantes(golosinasDeseada){
 	golosinasDeseadas = golosinasDeseada.asset()
 	return golosinasDeseadas.difference(bolsa.asset())
 }
 method gustosFaltantes(gustosDeseados){
 	
 }
 
 
}
